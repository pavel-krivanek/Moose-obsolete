tests
testSequence
	| sequence |
	parser := $a asPParser.
	sequence := parser, $b asPParser.
	 
	firstSet := self firstSet: sequence.

	self assert: firstSet size equals: 1.
	self assert: firstSet includes: parser