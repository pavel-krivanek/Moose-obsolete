tests
testAddingMultiMulti

	| o1 o2 o3 o4 | 
	
	o1 := FMSlotTestClass1 new.
	o2 := FMSlotTestClass2 new.
	o3 := FMSlotTestClass1 new.
	o4 := FMSlotTestClass2 new.

	self assert: o1 multi isEmpty.
	self assert: o2 multi isEmpty.
	self assert: o3 multi isEmpty.
	self assert: o4 multi isEmpty.
	o1 multi add: o2.
	o1 multi add: o4.
	o3 multi add: o2.
	o4 multi add: o3.
	self assert: (o1 multi size = 2).
	self assert: (o2 multi size = 2).
	self assert: (o3 multi size = 2).
	self assert: (o4 multi size = 2).
	self assert: (o1 multi includesAll: { o2. o4 }).
	self assert: (o2 multi includesAll: { o1. o3 }).
	self assert: (o3 multi includesAll: { o2. o4 }).
	self assert: (o4 multi includesAll: { o1. o3 }).
