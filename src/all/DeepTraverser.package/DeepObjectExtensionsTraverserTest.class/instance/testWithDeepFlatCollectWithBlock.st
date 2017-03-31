tests
testWithDeepFlatCollectWithBlock
	| result |
	result := 1 
		withDeep: [ :each | self nextGraphElementsFrom: each ]
		flatCollect: [ :each | each to: 4 ].
	self assert: result equals: #(1 2 3 4 2 3 4 3 4) asOrderedCollection