tests
testEmptyToOne

	| o | 
	
	o := FMSlotTestClass2 new.
	self assert: o one isNil.