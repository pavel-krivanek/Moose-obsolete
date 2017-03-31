tests
testAllPrinting
	| str entity |
	MooseEntity withAllSubclasses
		do: [ :cls | 
			cls hasAbstractMethods ifFalse: [
				str := WriteStream on: String new.
				entity := cls new.
				entity printOn: str.
				self assert: str contents equals: entity printString ] ]