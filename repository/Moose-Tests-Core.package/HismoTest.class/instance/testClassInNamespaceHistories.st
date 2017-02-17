testing - namespace history
testClassInNamespaceHistories
	self assert: (testData simpleHistory allNamespaceHistories entityNamed: #aNamespace) classHistories size equals: 5.
	(testData simpleHistory allNamespaceHistories entityNamed: #aNamespace) classHistories
		do: [ :each | self assert: each belongsTo equals: (testData simpleHistory allNamespaceHistories entityNamed: #aNamespace) ]