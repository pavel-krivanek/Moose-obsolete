tests - creation
testClassBeSource
	| sourceController |
	sourceController := OPUmlClassController new.
	sourceController addAsSourceFor: controller.
	self assert: controller sourceController equals: sourceController