tests
testallEnabledAndNotLoadedPlugins

	| c |
	c := RTAbstractPlugin allEnabledAndNotLoadedPlugins.
	self assert: c isCollection.
	self assert: (c noneSatisfy: #isBehavior).
	self assert: (c noneSatisfy: #isLoaded).
	self assert: (c allSatisfy: #isEnabled).