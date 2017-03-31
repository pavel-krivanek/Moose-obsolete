testing-utilities
testMatchingSkipRangesIn
	| input parser result |
	input := 'a12b3'.
	parser := #digit asParser plus.
	result := parser matchingSkipRangesIn: input.
	result := result collect: [ :each | input copyFrom: each first to: each last ].
	self assert: result size equals: 2.
	self assert: result first equals: '12'.
	self assert: result last equals: '3'