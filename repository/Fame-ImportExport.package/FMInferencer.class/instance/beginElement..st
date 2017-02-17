parsing
beginElement: name 
	| element |
	element := nameDict at: name ifAbsentPut: [ 
		FMAbstractElement new 
			serial: self nextSerial;
			name: name ].
	stack isEmpty not ifTrue: [
		self attributeElementsAdd: element ].
	stack push: element.