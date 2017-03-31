as yet unclassified
testThroughAndHasPoint
self
	assert: ((GLine through: 1@1 and: 3@3)through: 1@1 and: 3@3 hasPoint: 2@2 )
	equals: true.
self
	assert: ((GLine through: 1@1 and: 2@2)through: 1@1 and: 2@2 hasPoint: 3@3 )
	equals: true.
self
	assert: ((GLine through: 1@1 and: 2@2)through: 1@1 and: 2@2 hasPoint: 2@1 )
	equals: false.