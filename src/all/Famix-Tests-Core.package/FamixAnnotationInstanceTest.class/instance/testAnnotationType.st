tests
testAnnotationType
	| type instance |
	type := FAMIXAnnotationType new.
	instance := FAMIXAnnotationInstance new.
	instance annotationType: type.
	self assert: type instances size equals: 1