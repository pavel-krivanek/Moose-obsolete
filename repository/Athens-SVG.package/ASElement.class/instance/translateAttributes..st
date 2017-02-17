translate
translateAttributes: attrs
	attrs associationsDo: [:assoc |
		| setter |
		setter := self attributeSetter: assoc key.
		(self respondsTo: setter) ifTrue: [
			self perform: setter with: assoc value trimBoth ]
		ifFalse: [ self attributeAt: setter allButLast asSymbol put: assoc value trimBoth ]
	]