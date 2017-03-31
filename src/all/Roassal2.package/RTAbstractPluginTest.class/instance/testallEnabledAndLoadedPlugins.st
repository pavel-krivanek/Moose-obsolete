tests
testallEnabledAndLoadedPlugins

	| c |
	c := RTAbstractPlugin allEnabledAndLoadedPlugins.
	self assert: c isCollection.
	self assert: (c noneSatisfy: #isBehavior).
	self assert: (c allSatisfy: #isLoaded).
	self assert: (c allSatisfy: #isEnabled).