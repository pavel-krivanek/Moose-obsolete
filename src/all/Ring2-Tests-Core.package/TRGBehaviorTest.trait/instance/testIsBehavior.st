tests
testIsBehavior

	| newBehavior |
	newBehavior := self behaviorClass unnamed.
	
	self assert: newBehavior isBehavior

	