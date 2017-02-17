naming
signatureFromSmalltalkSelectorOn: aName
	"self signatureFromSmalltalkSelector: #new"

	"self signatureFromSmalltalkSelector: #new:"

	"self signatureFromSmalltalkSelector: #with:with:"

	"self signatureFromSmalltalkSelector: #with:with:with:"

	"self signatureFromSmalltalkSelector: #'+'"

	| sym ws numArgs |
	sym := aName asSymbol.
	numArgs := sym numArgs.
	ws := WriteStream on: (String new: sym size + (numArgs * 7) + 3).
	ws
		nextPutAll: sym;
		nextPut: $(.
	1
		to: numArgs
		do: [:inx | ws nextPutAll: 'Object,'].
	numArgs > 0 ifTrue: [ws skip: -1	"remove last space"].
	ws nextPut: $).
	^ws contents asSymbol