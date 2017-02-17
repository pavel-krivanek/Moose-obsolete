testing - class history
testMethodInClassHistories
	self assert: (testData simpleHistory allClassHistories entityNamed: #aNamespace::ClassA) methodHistories size equals: 2