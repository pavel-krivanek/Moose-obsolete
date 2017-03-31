*Moose-Algos-LinearAlgebra
readSmalltalkAndCSyntaxFrom: aStream
	"Answer an instance of me as described on the stream, aStream."
	
	| value neg |
	(aStream atEnd or: [aStream peek isLetter]) ifTrue: [^0].
	neg := aStream peekFor: $-.
	value := self readIntegerFrom: aStream radix: 10.
	(aStream peekFor: $r)
		ifTrue:
			[| radix |
			radix := value.
			value := self readSmalltalkRadix: value from: aStream.
			value := self checkForOldSyntax: radix with: value on: aStream]
		ifFalse: [value := self readSmalltalkAndCFloat: value from: aStream].
	^neg
		ifTrue: [value negated]
		ifFalse: [value]