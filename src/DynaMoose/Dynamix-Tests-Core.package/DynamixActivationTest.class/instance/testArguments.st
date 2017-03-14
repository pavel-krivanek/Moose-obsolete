tests
testArguments
	| activation argument1 argument2 |
	activation := DynamixActivation new.
	argument1 := DynamixReference new.
	argument2 := DynamixReference new.
	activation arguments: {argument1}.
	activation arguments add: argument2.
	self assert: (activation arguments includes: argument1).
	self assert: (activation arguments includes: argument2).
	self assert: (argument1 activationsWithArgument includes: activation).
	self assert: (argument2 activationsWithArgument includes: activation)