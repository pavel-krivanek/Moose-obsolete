tests
testClassSide
	
	| behavior |
	behavior := RGClass unnamed.
	self assert: behavior classSide == behavior metaclass. 
	self assert: behavior metaclass classSide == behavior metaclass. 
	