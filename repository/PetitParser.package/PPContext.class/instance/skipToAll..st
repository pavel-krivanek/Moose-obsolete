stream mimicry
skipToAll: aString
	"Set the access position of the receiver to be past the next occurrence of the subCollection. Answer whether subCollection is found.  No wildcards, and case does matter."
	| pattern startMatch |
	pattern := aString readStream.
	startMatch := nil.
	[ pattern atEnd ] whileFalse: 
		[ stream atEnd ifTrue: [ ^ false ].
		stream next = pattern next 
			ifTrue: [ pattern position = 1 ifTrue: [ startMatch := stream position ] ]
			ifFalse: 
				[ pattern position: 0.
				startMatch ifNotNil: 
					[ stream position: startMatch.
					startMatch := nil ] ] ].
	^ true