tests
testRemoving

	| o1 o2 | 
	
	o1 := FMSlotTestClass1 new.
	o2 := FMSlotTestClass2 new.

	o1 many add: o2.
	self assert: o1 many notEmpty.
	self assert: o1 many size = 1.
	self assert: o1 many anyOne = o2.

	o1 many remove: o2.
	self assert: o1 many isEmpty.
	self assert: o2 one isNil.
	
