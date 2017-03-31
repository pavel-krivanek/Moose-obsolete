tests
testDeepCollectAs
	| result |
	result := 1 
		deep: [ :each | self nextGraphElementsFrom: each ]
		collect: [ :each | each * 10 ]
		as: Set.
	self assert: result equals: #(20 30) asSet