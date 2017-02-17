*famix-implementation
signatureFromSmalltalkSelectorOn: aStream

	| sym numArgs |
	sym := self selector.
	numArgs := sym numArgs.
	aStream nextPut: $(.
	1
		to: numArgs
		do: [:inx | aStream nextPutAll: 'Object,'].
	numArgs > 0 ifTrue: [aStream skip: -1	"remove last space"].
	aStream nextPut: $).
	