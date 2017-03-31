adding
createElementWithType: aString

	| element |
	element := metamodel createInstanceOf: aString.
	self add: element.
	^ element
