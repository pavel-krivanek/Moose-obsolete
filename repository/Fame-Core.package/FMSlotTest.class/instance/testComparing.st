tests
testComparing

	| o1 o2 o3 o4| 
	
	o1 := FMSlotTestClass1 new.
	o2 := FMSlotTestClass2 new.
	o3 := FMSlotTestClass2 new.
	o4 := FMSlotTestClass1 new.

	o1 multi add: o2.
	o1 multi add: o3.
	o4 multi add: o2.
	o4 multi add: o3.
	self assert: (o1 multi = o4 multi).
