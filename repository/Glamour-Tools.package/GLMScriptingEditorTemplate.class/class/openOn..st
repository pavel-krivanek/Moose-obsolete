instance creation
openOn: anArrayOfAssociations
	"To spawn an editor, provide an array of associations whose values represent the names of a variables and the values are the objects referred by these variables. These variables can then be used in the code of the script.
	For example: 
	GLMEditor openOn: {#variable1->'value1' . #variable2->'value2'}"
	^ super openOn: anArrayOfAssociations