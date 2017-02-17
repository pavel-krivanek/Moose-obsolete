A PPContext is provides contextual information to the parsing function.

Instance Variables
	globals:		<Dictionary>
	properties:		<Dictionar>
	root:		<PPParser>
	stream:		<PPStream>

globals
	- properties that are not restored after backtracking

properties
	- properties that are restored after backtracking

root
	- the root parser

stream
	- input stream
