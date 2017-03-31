tests
testInstances
	| type instance |
	type := FAMIXAnnotationType new.
	instance := FAMIXAnnotationInstance new.
	type instances: (OrderedCollection with: instance).
	self assert: type instances size equals: 1.
	self assert: instance annotationType equals: type