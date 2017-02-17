tests
testEmptyToMany

	| o1 o2 | 
	
	o1 := FMSlotTestClass1 new.
	self assert: (o1 many isKindOf: FMSlotMultivalueLink).
	self assert: o1 many isEmpty.	
	self assert: (o1 multi isKindOf: FMSlotMultivalueLink).
	self assert: o1 multi isEmpty.
	
	o2 := FMSlotTestClass1 new.
	self assert: (o2 many isKindOf: FMSlotMultivalueLink).
	self assert: o2 multi isEmpty.