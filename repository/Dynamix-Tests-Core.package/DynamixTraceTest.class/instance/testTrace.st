tests
testTrace
	| trace |
	trace := DynamixTrace new.
	self assert: trace trace = trace