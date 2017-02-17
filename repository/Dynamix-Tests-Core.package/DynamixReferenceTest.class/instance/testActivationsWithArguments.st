tests
testActivationsWithArguments
	| activation1 activation2 argument |
	activation1 := DynamixActivation new.
	activation2 := DynamixActivation new.
	argument := DynamixReference new.
	argument activationsWithArgument: {activation1}.
	argument activationsWithArgument add: activation2.
	self assert: (activation1 arguments includes: argument).
	self assert: (activation2 arguments includes: argument).
	self assert: (argument activationsWithArgument includes: activation1).
	self assert: (argument activationsWithArgument includes: activation2)