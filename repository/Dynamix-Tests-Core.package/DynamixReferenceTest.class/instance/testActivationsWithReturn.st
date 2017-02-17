tests
testActivationsWithReturn
	| activation1 activation2 return |
	activation1 := DynamixActivation new.
	activation2 := DynamixActivation new.
	return := DynamixReference new.
	return activationsWithReturn: {activation1}.
	return activationsWithReturn add: activation2.
	self assert: activation1 return = return.
	self assert: activation2 return = return.
	self assert: (return activationsWithReturn includes: activation1).
	self assert: (return activationsWithReturn includes: activation2)