printing
printElementsStartingAt: aStart stoppingAt: aStop on: aStream
	aStart
		to: (aStop min: self openElements size)
		do: [:i |
			i > aStart
				ifTrue: [aStream nextPutAll: ', '].

			aStream
				nextPut: $<;
				nextPutAll: (self openElements at: i);
				nextPut: $>].

	(aStop < self openElements size)
		ifTrue: [aStream nextPutAll: '...'].