tests
testallLoadedPluginClasses
	| c |
	c := RTAbstractPlugin allLoadedPluginClasses.
	self assert: c isCollection.
	self assert: (c allSatisfy: #isBehavior).
	self assert: ((c collect: #new) allSatisfy: #isLoaded)