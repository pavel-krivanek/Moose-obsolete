testing-utilities
testParser
	| parser |
	parser := PPParser new.
	
	self assert: parser isPetitParser.

	self deny: 4 isPetitParser.
	self deny: 'foo' isPetitParser