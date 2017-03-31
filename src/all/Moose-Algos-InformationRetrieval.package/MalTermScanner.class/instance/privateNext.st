private
privateNext

	| next |	
	buffer reset.

	[	[(next := stream informationRetrievalNext) isLetter ] whileFalse.
		[buffer nextPut: next asLowercase.
		 (next := stream informationRetrievalNext) isLetter] whileTrue.
		[(next := stream informationRetrievalNext) isLetter ] whileFalse.
		stream skip: -1.
	] on: Stream endOfStreamSignal do: [:ex | "-- do nothing" ].
	
	^buffer contents isEmpty
		ifTrue: [nil]
		ifFalse: [buffer contents]