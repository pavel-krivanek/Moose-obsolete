tests
testClassSide
	
	| behavior |
	behavior := RGTrait unnamed.
	self assert: behavior classSide == behavior classTrait. 
	self assert: behavior classTrait classSide == behavior classTrait. 
	