tests - creation
testCanEnumerationBeTarget
	| classController |
	classController := OPUmlEnumerationController new.
	self assert: (classController canBeTargetFor: controller)