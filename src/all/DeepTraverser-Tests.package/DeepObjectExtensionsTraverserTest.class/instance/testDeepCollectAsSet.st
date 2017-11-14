tests
testDeepCollectAsSet
	| result |
	result := 1 deepCollectAsSet: [ :each | self nextGraphElementsFrom: each ].
	self assert: result equals: #(2 3) asSet