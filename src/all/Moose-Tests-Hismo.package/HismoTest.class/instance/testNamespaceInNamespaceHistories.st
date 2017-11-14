testing - namespace history
testNamespaceInNamespaceHistories
	self assert: (testData simpleHistory allNamespaceHistories entityNamed: #aNamespace) namespaceHistories size equals: 1.
	self assert: (testData simpleHistory allNamespaceHistories entityNamed: #aNamespace) belongsTo isNil.
	self
		assert: (testData simpleHistory allNamespaceHistories entityNamed: #aNamespace::anotherNamespace) belongsTo
		equals: (testData simpleHistory allNamespaceHistories entityNamed: #aNamespace)