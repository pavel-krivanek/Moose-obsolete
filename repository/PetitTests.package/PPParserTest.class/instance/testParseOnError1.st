testing-utilities
testParseOnError1
	| parser result seen |
	parser := $a asParser.
	result := parser parse: 'a' onError: [ self signalFailure: 'Not supposed to report an error' ].
	self assert: result equals: $a.
	result := parser
		parse: 'b'
		onError: [ :failure | 
			self assert: failure position equals: 0.
			self assert: failure message includesSubstring: $a printString.
			self assert: failure message includesSubstring: 'expected'.
			seen := true ].
	self assert: result.
	self assert: seen