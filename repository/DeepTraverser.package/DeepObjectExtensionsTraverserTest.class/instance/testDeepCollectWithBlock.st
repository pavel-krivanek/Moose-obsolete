tests
testDeepCollectWithBlock
	| result |
	result := 1 
		deep: [ :each | self nextGraphElementsFrom: each ]
		collect: [ :each | each * 10 ].
	self assert: result equals: #(20 30) asOrderedCollection