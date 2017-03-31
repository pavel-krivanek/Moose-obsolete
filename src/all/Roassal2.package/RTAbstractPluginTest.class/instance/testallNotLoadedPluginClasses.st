tests
testallNotLoadedPluginClasses
	| c |
	c := RTAbstractPlugin allNotLoadedPluginClasses.
	self assert: c isCollection.
	self assert: (c allSatisfy: #isBehavior).
	self assert: ((c collect: #new) noneSatisfy: #isLoaded)