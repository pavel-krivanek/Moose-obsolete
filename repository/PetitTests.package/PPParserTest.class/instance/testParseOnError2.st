testing-utilities
testParseOnError2
	| parser result seen |
	parser := $a asParser.
	result := parser parse: 'a' onError: [ self signalFailure: 'Not supposed to report an error' ].
	self assert: result equals: $a.
	result := parser
		parse: 'b'
		onError: [ :msg :pos | 
			self assert: msg includesSubstring: $a printString.
			self assert: msg includesSubstring: 'expected'.
			self assert: pos equals: 0.
			seen := true ].
	self assert: result.
	self assert: seen