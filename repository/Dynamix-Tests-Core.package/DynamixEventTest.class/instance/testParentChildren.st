tests
testParentChildren

	| event1 event11 event12 |
	event1 := DynamixEvent new.
	event11 := DynamixEvent new.
	event12 := DynamixEvent new.
	event11 parent: event1.
	event12 parent: event1.
	self assert: event1 children size = 2