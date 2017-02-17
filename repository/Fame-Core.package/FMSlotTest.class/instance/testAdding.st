tests
testAdding

	| o1 o2 | 
	
	o1 := FMSlotTestClass1 new.
	o2 := FMSlotTestClass2 new.

	self assert: o1 many isEmpty.
	o1 many add: o2.
	self assert: o1 many notEmpty.
	self assert: o1 many size = 1.
	self assert: o1 many anyOne = o2.
	self assert: o2 one = o1.