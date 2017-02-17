running
testNewLarge
	v := MalBooleanVector new: 100.
	self assert: v size equals: 100.
	self assert: (v allSatisfy: #not)