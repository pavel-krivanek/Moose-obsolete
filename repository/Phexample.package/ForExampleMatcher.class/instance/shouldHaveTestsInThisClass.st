examples
shouldHaveTestsInThisClass
	self class allTestSelectors isEmpty should not be: true.
	self class allTestSelectors size should > 20.
	
	