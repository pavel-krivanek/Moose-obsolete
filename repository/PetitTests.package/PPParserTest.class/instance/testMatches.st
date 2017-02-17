testing-utilities
testMatches
	| parser |
	parser := $a asParser.
	
	self assert: (parser matches: 'a').
	self deny: (parser matches: 'b').
	
	self assert: (parser matches: 'a' readStream).
	self deny: (parser matches: 'b' readStream)