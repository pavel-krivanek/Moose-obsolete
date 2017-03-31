testing - class history
testSelectByExpression
	self
		assert: (testData simpleHistory allClassHistories select: [ :each | each evolutionOfNumberOfMethods > 0 ]) size
		equals: 3