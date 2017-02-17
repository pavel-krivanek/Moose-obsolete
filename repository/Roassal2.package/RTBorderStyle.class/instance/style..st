accessing
style: aStyle
	aStyle isSymbol
		ifTrue: [ self perform: aStyle ]
		ifFalse: [ style := aStyle ]