tests
testAccessing

	| o1 o2 o3 o4 aCollection| 
	
	o1 := FMSlotTestClass1 new.
	o2 := FMSlotTestClass2 new.
	o3 := FMSlotTestClass2 new.
	o4 := FMSlotTestClass2 new.

	self assert: ((o1 many size) = 0).

	o1 many add: o2.
	o1 many add: o3.

	self assert: ((o1 many size) = 2).
	self assert: ((o1 many at: 1) = o2).
	self assert: ((o1 many at: 2) = o3).
	self assert: ((o1 many first) = o2).
	self assert: ((o1 many second) = o3).
	self assert: ((o1 many last) = o3).
	self assert: ((o1 many last) = o3).
	
	self assert: (o1 many byName: o2 name) = o2.
	self assert: (o1 many byName: 'none' ifAbsent: [#absent]) = #absent.

	aCollection := OrderedCollection new.
	o1 many do: [:each | aCollection add: each].
	self assert: (aCollection includesAll: {o2. o3 }).
	
	
