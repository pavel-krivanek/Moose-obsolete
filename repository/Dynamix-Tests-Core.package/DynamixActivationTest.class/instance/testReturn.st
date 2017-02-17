tests
testReturn
	| activation return |
	activation := DynamixActivation new.
	return := DynamixReference new.
	activation return: return.
	self assert: activation return = return.
	self assert: (return activationsWithReturn includes: activation)