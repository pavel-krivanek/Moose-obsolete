tests
testActivationsWithReceiver
	| activation1 activation2 receiver |
	activation1 := DynamixActivation new.
	activation2 := DynamixActivation new.
	receiver := DynamixReference new.
	receiver activationsWithReceiver: {activation1}.
	receiver activationsWithReceiver add: activation2.
	self assert: activation1 receiver = receiver.
	self assert: activation2 receiver = receiver.
	self assert: (receiver activationsWithReceiver includes: activation1).
	self assert: (receiver activationsWithReceiver includes: activation2)