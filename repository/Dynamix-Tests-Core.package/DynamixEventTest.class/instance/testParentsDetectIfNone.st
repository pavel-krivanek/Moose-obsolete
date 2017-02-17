tests
testParentsDetectIfNone
	| event1 event11 event12 event121 |
	event1 := DynamixEvent new.
	event11 := DynamixEvent new.
	event12 := DynamixEvent new.
	event121 := DynamixEvent new.
	event11 parent: event1.
	event12 parent: event1.
	event121 parent: event12.
	self assert: (event121 parentsDetect: [:each | each = event1] ifNone: [nil]) = event1