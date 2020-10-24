// Copyright 2020 The Nakama Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package main

import (
	"bytes"
	"encoding/json"
	"flag"
	"fmt"
	"io/ioutil"
	"strings"
	"text/template"
)

const nameDefaultSession string = "NakamaSession"
const nameDefaultFuture string = "ResponseFuture"
const nameSessionFuture string = "Future"
const nameDefaultInt64 string = "int" // treat int64 as int

var dartKeywords = map[string]bool{
	"external": true,
	"sync":     true,
}

const templateInterface string = `
// 
// THIS FILE IS GENERATED USING
// make swagger-gen 
// 

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:nakama_client/src/generated/proto/github.com/heroiclabs/nakama-common/api/api.pb.dart';
import 'package:meta/meta.dart';
import 'package:nakama_client/src/client/nakama_session.dart';

abstract class BaseClientInterface {
    {{.}}
}
`

const templateImplementation string = `
// DONT USE THIS! This is not even experimental

import 'package:nakama_client/src/generated/proto/api.pb.dart';
import 'package:nakama_client/src/generated/proto/google/protobuf/wrappers.pbserver.dart';
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';
import 'package:nakama_client/src/client/BaseClient.dart';
import 'package:nakama_client/src/generated/proto/google/protobuf/empty.pbserver.dart';

  BoolValue boolTrue = BoolValue()..value = true;
  BoolValue boolFalse = BoolValue()..value = false;
  BoolValue getBool(bool b) => b ? boolTrue : boolFalse;
  Int32Value getInt32(int i) {
    var val = Int32Value()..value = i;
    //val.value = i;
    return val;
  }



   class DefaultClient extends BaseClient {
		DefaultClient({String nakama_host, int nakama_port, String serverKey})
		: super(
			  nakama_host: nakama_host,
			  nakama_port: nakama_port,
			  serverKey: serverKey);

	{{.}}
	
	}
`

type Parameter struct {
	Name     string
	In       string
	Required bool
	Type     string   // used with primitives
	Items    struct { // used with type "array"
		Type string
	}
	Schema struct { // used with http body
		Type string
		Ref  string `json:"$ref"`
	}
	Format      string // used with type "boolean"
	Description string
}

type Definition struct {
	Properties map[string]struct {
		Type  string
		Ref   string   `json:"$ref"` // used with object
		Items struct { // used with type "array"
			Type string
			Ref  string `json:"$ref"`
		}
		AdditionalProperties struct {
			Type string // used with type "map"
		}
		Format      string // used with type "boolean"
		Description string
	}
	Description string
}

type Schema struct {
	SubNamespace string
	Paths        map[string]map[string]struct {
		Summary     string
		OperationId string
		Responses   struct {
			Ok struct {
				Schema struct {
					Ref string `json:"$ref"`
				}
			} `json:"200"`
		}
		Parameters []Parameter
		Security   []map[string][]struct {
		}
	}
	Definitions map[string]Definition
}

var schema Schema

func convertRefToClassName(input string) (className string) {
	cleanRef := strings.TrimPrefix(input, "#/definitions/api")
	className = strings.Title(cleanRef)
	return
}

func snakeCaseToCamelCase(input string) (camelCase string) {
	isToUpper := false
	for k, v := range input {
		if k == 0 {
			camelCase = strings.ToLower(string(input[0]))
		} else {
			if isToUpper {
				camelCase += strings.ToUpper(string(v))
				isToUpper = false
			} else {
				if v == '_' {
					isToUpper = true
				} else {
					camelCase += string(v)
				}
			}
		}

	}
	return
}

func toDartType(input string, additional string) (output string) {
	output = "UNKNOWN"
	switch input {
	case "string":
		if additional == "int64" {
			return nameDefaultInt64
		}
		output = "String"
		break
	case "uint64":
	case "int64":
		output = "Int64"
	case "integer":
		if additional == "int64" {
			return nameDefaultInt64
		}
		fallthrough
	case "int32":
		fallthrough
	case "uint32":
		output = "int"
		break
	case "boolean":
		output = "bool"
	case "array":
		output = "List<" + additional + ">"
	case "object":
		output = "Map<String," + additional + ">" // how determine if the key would be != string (in swagger)
	default:
		fmt.Println("UNKNOWN dartype " + input)
		output = "unknown:" + input
	}
	return
}

func contains(s []string, e string) bool {
	for _, a := range s {
		if a == e {
			return true
		}
	}
	return false
}

func dartOperations(schema Schema) (implementationOutput string, interfaceOutput string) {
	interfaceOutput = ""
	implementationOutput = ""

	for _, path := range schema.Paths {
		for _, operation := range path {
			methodName := firstLowerCase(snakeCaseToPascalCase(stripOperationPrefix(operation.OperationId)))
			returnType := stripApiPrefix(convertRefToClassName(operation.Responses.Ok.Schema.Ref))

			hasParameters := len(operation.Parameters) > 0
			isAuthenticateMethod := strings.HasPrefix(methodName, "authenticate")

			if isAuthenticateMethod {
				returnType = nameDefaultSession
			}

			if returnType == "" {
				returnType = "void"
			}

			opOutput := ""
			opDoc := ""

			if operation.Summary != "" {
				opDoc += "/// " + operation.Summary + "\n"
			}

			// future
			if isAuthenticateMethod {
				opOutput += nameSessionFuture
			} else {
				opOutput += nameDefaultFuture
			}

			// generic
			opOutput += "<" + returnType + "> " + methodName + "("

			if !isAuthenticateMethod {
				opOutput += "final " + nameDefaultSession + " session"
				opDoc += "/// @param session The session you want to operate on\n"
			}

			if hasParameters {
				if !isAuthenticateMethod {
					opOutput += ","
				}
				opOutput += "{"
			}

			constSetters := firstUpperCase(methodName) + "Request()"
			//constSetters := ""
			ignoreParams := make([]string, 0)
			for idx, param := range operation.Parameters {
				if param.Name == "vars" {
					continue
				}

				name := snakeCaseToCamelCase(param.Name)

				if dartKeywords[name] {
					name += "_"
				}

				ignoreParams = append(ignoreParams, name)
				if idx > 0 {
					opOutput += ","
				}

				if param.Description != "" {
					opDoc += "/// @param " + param.Name + " " + param.Description + "\n"
				}

				if param.Schema.Ref != "" {
					if name != "body" {
						constSetters += name + "="
					}
					_params, _setters := processDefinition(param.Schema.Ref, false, ignoreParams)
					opOutput += _params
					constSetters += "(" + _setters + ")"
				} else {
					innerType := ""
					if param.Items.Type != "" {
						innerType = toDartType(param.Items.Type, "")
					} else {
						innerType = param.Format
					}
					if param.Required {
						opOutput += "@required "
					}

					paramType := param.Type
					if paramType == "" {
						paramType = param.Schema.Type
					}

					opOutput += "final " + toDartType(paramType, innerType) + " " + name
					constSetters += dartConcatParam(name, paramType, param.Format)
				}
			}

			if hasParameters {
				opOutput += "}"
			}

			opOutput += ")"

			interfaceOutput += opDoc + opOutput + ";\n"

			opOutput += "{ return client." + methodName + "(\n" + constSetters + ");\n}\n\n"
			fmt.Println(opOutput)
			implementationOutput += opDoc + opOutput
		}

	}
	return implementationOutput, interfaceOutput
}

func processDefinition(definitionKey string, recursive bool, ignoreParam []string) (stParams string, stSetter string) {
	cleanRef := strings.TrimPrefix(definitionKey, "#/definitions/")
	stSetter = cleanRef[3:] + "()"

	def := schema.Definitions[cleanRef]
	stParams = ""
	for name, prop := range def.Properties {
		if name == "vars" || contains(ignoreParam, name) {
			continue
		}
		name = snakeCaseToCamelCase(name)

		if dartKeywords[name] {
			name += "_"
		}

		if prop.Type != "" {
			if len(stParams) > 0 {
				stParams += ","
			}
			if prop.Items.Ref == "" {
				innerType := prop.AdditionalProperties.Type
				if innerType != "" {
					innerType = toDartType(innerType, "")
				} else {
					innerType = prop.Format
				}
				stParams += "final " + toDartType(prop.Type, innerType) + " " + name
			} else {
				cleanRef = strings.TrimPrefix(prop.Items.Ref, "#/definitions/")[3:]
				stParams += "final " + toDartType(prop.Type, cleanRef) + " " + name
			}
			stSetter += dartConcatParam(name, prop.Type, prop.Format)
		} else {
			//output = "ref:" + prop.Ref
		}
	}
	return
}

func dartConcatParam(paramName string, paramType string, paramExtra string) (output string) {
	switch paramType {
	case "boolean":
		output = ".." + paramName + "=getBool(" + paramName + ")"
		return
	case "array":
		output = ".." + paramName + ".addAll(" + paramName + ")"
	case "integer":
		{
			switch paramExtra {
			case "int32":
				output = ".." + paramName + "=getInt32(" + paramName + ")"
			case "int64":
				output = ".." + paramName + "=getInt64(" + paramName + ")"
			case "uint32":
				output = ".." + paramName + "=getUInt32(" + paramName + ")"
			case "uint64":
				output = ".." + paramName + "=getUInt64(" + paramName + ")"
			default:
				fmt.Println("UNKNOWN INTEGER:" + paramExtra)
				output = ".." + paramName + "=" + paramName
			}
			return
		}
	default:
		output = ".." + paramName + "=" + paramName
	}
	return
}

// {{- range $url, $path := .Paths }}
// {{- range $method, $operation := $path}}
//   /// {{ $operation.Summary | stripNewlines }}
//   ResponseFuture<{{ $operation.Responses.Ok.Schema.Ref | cleanRef | stripApiPrefix }}> {{ $operation.OperationId | stripOperationPrefix | pascalCase | firstLower }}(
//       {{- $operation.Parameters | dartParam}}
//   ){
//       return client.{{ $operation.OperationId | stripOperationPrefix | pascalCase | firstLower }}(
//           {{ $operation.OperationId }}Request();
//       );
//   }
// {{- end }}
// {{- end }}

func snakeCaseToPascalCase(input string) (output string) {
	isToUpper := false
	for k, v := range input {
		if k == 0 {
			output = strings.ToUpper(string(input[0]))
		} else {
			if isToUpper {
				output += strings.ToUpper(string(v))
				isToUpper = false
			} else {
				if v == '_' {
					isToUpper = true
				} else {
					output += string(v)
				}
			}
		}
	}
	return
}

func isSnakeCase(input string) (output bool) {

	output = true

	for _, v := range input {
		vString := string(v)
		if vString != "_" && strings.ToUpper(vString) == vString {
			output = false
		}
	}

	return
}

func camelCaseToSnakeCase(input string) (output string) {
	output = ""

	if isSnakeCase(input) {
		output = input
		return
	}

	for _, v := range input {
		vString := string(v)
		if vString == strings.ToUpper(vString) {
			output += "_" + strings.ToLower(vString)
		} else {
			output += vString
		}
	}

	return
}

func stripNewlines(input string) (output string) {
	output = strings.Replace(input, "\n", " ", -1)
	return
}

func stripOperationPrefix(input string) string {
	return strings.Replace(input, "Nakama_", "", 1)
}

func firstLowerCase(input string) string {
	result := strings.ToLower(input[0:1]) + input[1:]
	return result
}

func firstUpperCase(input string) string {
	result := strings.ToUpper(input[0:1]) + input[1:]
	return result
}

func stripApiPrefix(input string) (output string) {
	if len(input) < 3 {
		return input
	}
	if input[0:2] == "Api" {
		return input[3:]
	}
	return input
}

func main() {
	// Argument flags
	//output := flag.String("o", "BaseClientInterface.dart", "The output for generated code.")

	output := "BaseClientInterface.dart"
	flag.Parse()

	inputs := flag.Args()
	if len(inputs) < 1 {
		fmt.Printf("No input file found: %s\n\n", inputs)
		fmt.Println("openapi-gen [flags] inputs...")
		flag.PrintDefaults()
		return
	}

	inputFile := inputs[0]
	if len(inputs) > 1 {
		output = inputs[1]
	}
	content, err := ioutil.ReadFile(inputFile)
	if err != nil {
		fmt.Printf("Unable to read file: %s\n", err)
		return
	}

	var subnamespace (string) = ""

	if len(inputs) > 1 {
		if len(inputs[1]) <= 0 {
			fmt.Println("Empty Sub-Namespace provided.")
			return
		}

		subnamespace = inputs[1]
	}

	schema.SubNamespace = subnamespace

	if err := json.Unmarshal(content, &schema); err != nil {
		fmt.Printf("Unable to decode input file %s : %s\n", inputFile, err)
		return
	}

	// fmap := template.FuncMap{
	// 	"camelCase":            snakeCaseToCamelCase,
	// 	"cleanRef":             convertRefToClassName,
	// 	"pascalCase":           snakeCaseToPascalCase,
	// 	"stripNewlines":        stripNewlines,
	// 	"title":                strings.Title,
	// 	"uppercase":            strings.ToUpper,
	// 	"snakeCase":            camelCaseToSnakeCase,
	// 	"stripOperationPrefix": stripOperationPrefix,
	// 	"firstLower":           firstLowerCase,
	// 	"stripApiPrefix":       stripApiPrefix,
	// 	"dartParam":            dartParameter,
	// 	"dartOperations":       dartOperations,
	// }

	_, interfaceOutput := dartOperations(schema)

	//	implOutput, interfaceOutput := dartOperations(schema)
	//	tmpl, err := template.New(inputFile).Funcs(fmap).Parse(codeTemplate)

	tmpl, err := template.New(inputFile).Parse(templateInterface)
	if err != nil {
		fmt.Printf("Template parse error: %s\n", err)
		return
	}

	{
		var tpl bytes.Buffer
		tmpl.Execute(&tpl, interfaceOutput)

		err := ioutil.WriteFile(output, tpl.Bytes(), 0644)

		if err != nil {
			fmt.Printf("Interface write error:%s", err)
		}
	}
	// generate implementation.... generation was not really possible due to the problem
	// that you dont know the toplevel's class-name

	// implTemplate, err := template.New(inputFile).Parse(templateImplementation)
	// if err != nil {
	// 	fmt.Printf("Template parse error: %s\n", err)
	// 	return
	// }

	// if len(*output) < 1 {
	// 	var tpl bytes.Buffer
	// 	implTemplate.Execute(&tpl, implOutput)
	// 	err := ioutil.WriteFile("BaseClientImplMixin.dart", tpl.Bytes(), 0644)
	// 	if err != nil {
	// 		fmt.Printf("Interface write error:%s", err)
	// 	}
	// }

}
