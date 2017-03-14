private
privateNext

	next isNil ifTrue: [^nil].
	buffer reset.
	[self xWhitespace.
	 next isLowercase
		ifTrue: [self xLowercaseWord]
		ifFalse: [self xCapitalizedWord]
	] on: Stream endOfStreamSignal do: [:ex | next := nil].

	^buffer contents isEmpty
		ifTrue: [nil]
		ifFalse: [buffer contents]