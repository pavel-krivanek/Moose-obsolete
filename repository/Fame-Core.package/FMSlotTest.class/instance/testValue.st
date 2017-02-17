tests
testValue

	| o1 o2 o3 o4 o5 | 
	
	o1 := FMSlotTestClass1 new.
	o2 := FMSlotTestClass2 new.
	o3 := FMSlotTestClass2 new.
	o4 := FMSlotTestClass2 new.
	o5 := FMSlotTestClass2 new.

	self assert: (o1 many value isEmpty).
	o1 many add: o2.
	o1 many add: o3.
	self assert: (o1 many value includesAll: { o2. o3 }).
	o1 many value: { o4. o5 }.
	self assert: (o1 many size = 2).
	self assert: (o1 many includesAll: { o4. o5 }).
