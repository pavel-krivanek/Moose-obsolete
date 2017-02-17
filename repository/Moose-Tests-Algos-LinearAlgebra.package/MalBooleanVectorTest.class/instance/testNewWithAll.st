running
testNewWithAll
	v := MalBooleanVector new: 100 withAll: true.
	self assert: v size equals: 100.
	self assert: (v allSatisfy: #yourself)