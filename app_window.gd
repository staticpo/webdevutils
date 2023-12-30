extends Node2D
#
## Beautifies a JSON string
#func beautify_json(json_string: String, indent_level: int = 4) -> String:
	#var json = JSON.new()
	#var error = json.parse(json_string)
	#
	#if error != OK:
		#print("Error parsing JSON: ", error)
		#return ""
#
	#return _beautify_recursive(json.get_data(), 0, indent_level)
#
## Recursively beautifies the JSON data
#func _beautify_recursive(data, depth: int, indent_level: int) -> String:
	#var indent = _create_indent(depth, indent_level)
	#var child_indent = _create_indent(depth + 1, indent_level)
	#var result = ""
#
	#if typeof(data) == TYPE_DICTIONARY:
		#result += '{\n'
		#var keys = data.keys()
		#for i in range(keys.size()):
			#var key = keys[i]
			#result += child_indent + '"' + str(key) + '": '
			#result += _beautify_recursive(data[key], depth + 1, indent_level)
			#if i < keys.size() - 1:
				#result += ','
			#result += '\n'
		#result += indent + '}'
	#elif typeof(data) == TYPE_ARRAY:
		#result += '[\n'
		#for i in range(data.size()):
			#result += child_indent + _beautify_recursive(data[i], depth + 1, indent_level)
			#if i < data.size() - 1:
				#result += ','
			#result += '\n'
		#result += indent + ']'
	#else:
		#if typeof(data) == TYPE_STRING:
			#result += '"' + data + '"'
		#else:
			#result += str(data)
	#return result
#
## Creates indentation string
#func _create_indent(depth: int, indent_level: int) -> String:
	#var indent = ""
	#for i in range(depth * indent_level):
		#indent += ' '
	#return indent
#
## Example usage
#func _ready():
	#var example_json = '{"name": "John", "age": 30, "cars": ["Ford", "BMW", "Fiat"]}'
	#print(beautify_json(example_json))
