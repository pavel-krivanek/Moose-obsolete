tests - creation
testCanClassBeTarget
	| classController |
	classController := OPUmlClassController new.
	self assert: (classController canBeTargetFor: controller)