running
testAccessingSmall
	v := MalBooleanVector new: 5.
	v at: 3 put: true.
	self assert: v size equals: 5.
	self assert: (v at: 2) not.
	self assert: (v at: 3).
	self assert: (v at: 4) not.
	v at: 3 put: false.
	self assert: (v allSatisfy: #not)