testing - class history
testSubHistories
	self
		assert: (testData simpleHistory allClassHistories entityNamed: #aNamespace::ClassA) directSubHistories size
		equals: 3