tests
testdefaultContextClass
	self assert: RTAbstractViewContext defaultContextClass notNil.
	self assert: RTAbstractViewContext defaultContextClass isBehavior.