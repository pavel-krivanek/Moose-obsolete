testing-utilities
testParseOnError0
	| parser result seen |
	parser := $a asParser.
	result := parser parse: 'a' onError: [ self signalFailure: 'Not supposed to report an error' ].
	self assert: result equals: $a.
	result := parser parse: 'b' onError: [ seen := true ].
	self assert: result.
	self assert: seen