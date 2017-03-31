tests
testAllPlugins

	| c |
	c := RTAbstractPlugin allPlugins.
	self assert: c isCollection.
	self assert: (c noneSatisfy: #isBehavior)