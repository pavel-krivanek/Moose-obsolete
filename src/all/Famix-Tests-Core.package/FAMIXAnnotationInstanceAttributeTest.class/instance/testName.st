tests
testName
	| type instance |
	type := FAMIXAnnotationTypeAttribute new.
	type name: 'aName'.
	instance := self actualClass new.
	instance annotationTypeAttribute: type.
	self assert: instance name equals: 'aName'