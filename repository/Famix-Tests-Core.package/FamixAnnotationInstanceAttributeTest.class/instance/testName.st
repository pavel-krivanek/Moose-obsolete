tests
testName
	| type instance |
	type := FAMIXAnnotationTypeAttribute new.
	type name: 'aName'.
	instance := FAMIXAnnotationInstanceAttribute new.
	instance annotationTypeAttribute: type.
	self assert: instance name equals: 'aName'