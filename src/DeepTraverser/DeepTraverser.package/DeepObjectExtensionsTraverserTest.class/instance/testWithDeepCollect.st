tests
testWithDeepCollect
	| result |
	result := 1 withDeepCollect: [ :each | self nextGraphElementsFrom: each ].
	self assert: result asSet equals: #(1 2 3) asSet