tests
testTypeInstance
	| instance1 instance2 type |
	instance1 := DynamixInstance new.
	instance2 := DynamixInstance new.
	type := FAMIXType new.
	instance1 type: type.
	instance2 type: type.
	self assert: type instances size = 2.
	self assert: type instances first = instance1.
	self assert: type instances last = instance2	