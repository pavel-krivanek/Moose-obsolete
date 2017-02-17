tests
testTrace 
	| trace event1 event11 |
	trace := DynamixTrace new.
	event1 := DynamixEvent new.
	event1 parent: trace.
	event11 := DynamixEvent new.
	event11 parent: event1.
	self assert: event11 trace = trace.
	self assert: event1 trace = trace