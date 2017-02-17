running
testNewSmall
	v := MalBooleanVector new: 5.
	self assert: v size equals: 5.
	self assert: (v allSatisfy: #not)