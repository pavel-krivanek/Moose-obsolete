tests
testDeepFlatCollectWithBlock
	| result |
	result := 1 
		deep: [ :each | self nextGraphElementsFrom: each ]
		flatCollect: [ :each | 1 to: each ].
	self assert: result equals: #(1 2 1 2 3) asOrderedCollection