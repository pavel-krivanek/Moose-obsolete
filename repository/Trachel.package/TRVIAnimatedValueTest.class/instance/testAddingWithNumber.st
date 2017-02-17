tests
testAddingWithNumber

	| t |
	t := TRVIAnimatedValue new.
	t evaluator: [ :timE | 5 ].

	self assert: t value equals: 5.
	self assert: (t value + 4) value equals: 9.
	self assert: (4 + t value) value equals: 9