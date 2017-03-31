running
testAccessingLarge
	v := MalBooleanVector new: 100.
	v at: 83 put: true.
	self assert: v size equals: 100.
	self assert: (v at: 82) not.
	self assert: (v at: 83).
	self assert: (v at: 84) not.
	v at: 83 put: false.
	self assert: (v allSatisfy: #not)