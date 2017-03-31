operations
style: aString 
	| values |
	values := aString subStrings: ';'.
	
	values do: [:keyval | | key val setter |
		key := (keyval copyUpTo: $:) trimBoth.
		val := (keyval copyAfter: $:) trimBoth.
		setter := self attributeSetter: key.
		(self respondsTo: setter) ifTrue: [ self perform: setter with: val ]
		ifFalse: [ self attributeAt: setter allButLast asSymbol  put: val ]
		]
