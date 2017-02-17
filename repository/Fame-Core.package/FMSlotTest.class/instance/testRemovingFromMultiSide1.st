tests
testRemovingFromMultiSide1

	| o1 o2 | 
	
	o1 := FMSlotTestClass1 new.
	o2 := FMSlotTestClass2 new.

	o1 multi add: o2.
	self assert: o1 multi notEmpty.
	self assert: o1 multi size = 1.
	self assert: o1 multi anyOne = o2.

	o1 multi remove: o2.
	self assert: o1 multi isEmpty.
	self assert: o2 multi isEmpty.
	
