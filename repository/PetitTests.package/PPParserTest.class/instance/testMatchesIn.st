testing-utilities
testMatchesIn
	| parser result |
	parser := $a asParser.
	result := parser matchesIn: 'abba'.
	self assert: result size equals: 2.
	self assert: result first equals: $a.
	self assert: result last equals: $a.
	result := parser matchesIn: 'baaah'.
	self assert: result size equals: 3.
	self assert: result first equals: $a.
	self assert: result last equals: $a