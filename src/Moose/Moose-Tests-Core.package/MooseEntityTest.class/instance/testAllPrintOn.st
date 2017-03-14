tests
testAllPrintOn
	| t str ins |
	MooseEntity withAllSubclasses
		do: [ :cls | 
			cls hasAbstractMethods ifFalse: [
				str := WriteStream on: String new.
				ins := cls new.
				self shouldnt: [ t := ins printString ] raise: Error.
				self assert: t isByteString.
				ins printOn: str.
				self assert: str contents equals: t ] ]