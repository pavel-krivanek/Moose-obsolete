tests
testTakeover

	| o1 o2 o3| 
	
	o1 := FMSlotTestClass1 new.
	o2 := FMSlotTestClass2 new.
	o3 := FMSlotTestClass1 new.

	o1 many add: o2.
	self assert: (o1 many first = o2).
	o3 many add: o2.
	self assert: (o3 many first = o2).
	self assert: (o1 many isEmpty).