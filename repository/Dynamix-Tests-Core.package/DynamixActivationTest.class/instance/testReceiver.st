tests
testReceiver
	| activation receiver |
	activation := DynamixActivation new.
	receiver := DynamixReference new.
	activation receiver: receiver.
	self assert: activation receiver = receiver.
	self assert: (receiver activationsWithReceiver includes: activation)