accessing
endOfLineParser
	EndOfLineParser isNil ifTrue: [ 
		EndOfLineParser  := self createEndOfLineParser.
	].
	^ EndOfLineParser 