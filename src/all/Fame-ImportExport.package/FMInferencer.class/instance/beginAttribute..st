parsing
beginAttribute: name 

	| element attribute |
	element := stack top.
	attribute := element attributes at: name ifAbsentPut: [ FMAbstractAttribute new name: name ].
	stack push: attribute -> 0.	