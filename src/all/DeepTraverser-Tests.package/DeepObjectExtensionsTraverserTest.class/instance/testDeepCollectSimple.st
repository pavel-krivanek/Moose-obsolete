tests
testDeepCollectSimple
	| result |
	result := 1 deepCollect: [ :each | self nextGraphElementsFrom: each ].
	self assert: result equals: #(2 3) asOrderedCollection