helpers-primitives
printObject: anObject on: aStream 
	"Append to the argument aStream a sequence of characters
        that describes the receiver."

	| title |
	title := (self extractClassOf: anObject) name.
	aStream 
		nextPutAll: ((title at: 1) isVowel ifTrue: ['an '] ifFalse: ['a ']).
	aStream nextPutAll: title