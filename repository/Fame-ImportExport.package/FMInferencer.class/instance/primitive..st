parsing
primitive: value 
	
	value isString ifTrue: [
		^self attributeElementsAdd: #String ].
	value isNumber ifTrue: [
		^self attributeElementsAdd: #Number ].
	value isBoolean  ifTrue: [
		^self attributeElementsAdd: #Boolean ].
	self error: 'Type of primitive value not known.'	