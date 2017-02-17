accessing
beginOfLineParser
	BeginOfLineParser isNil ifTrue: [ 
		BeginOfLineParser  := self createBeginOfLineParser.
	].
	^ BeginOfLineParser 