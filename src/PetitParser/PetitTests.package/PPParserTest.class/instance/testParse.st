testing-utilities
testParse
	| parser result |
	parser := $a asParser.
	self assert: (parser parse: 'a') equals: $a.
	self assert: (result := parser parse: 'b') isPetitFailure.
	self assert: result message includesSubstring: $a printString.
	self assert: result message includesSubstring: 'expected'.
	self assert: result position equals: 0.
	self assert: (parser parse: 'a' readStream) equals: $a.
	self assert: (result := parser parse: 'b' readStream) isPetitFailure.
	self assert: result message includesSubstring: $a printString.
	self assert: result message includesSubstring: 'expected'.
	self assert: result position equals: 0