tests
testChildrenParent

	| event1 event11 event12 |
	event1 := DynamixEvent new.
	event11 := DynamixEvent new.
	event12 := DynamixEvent new.
	event1 children: {event11}.
	event1 children add: event12.
	self assert: event11 parent = event1.
	self assert: event12 parent = event1