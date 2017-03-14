converting
indexOfName: aString
	"Return the index of the column named aString"
	| s |
	s := aString asSymbol.
	firstRow doWithIndex: [ :e :i | e asSymbol = s ifTrue: [ ^ i ] ].
	^ 0