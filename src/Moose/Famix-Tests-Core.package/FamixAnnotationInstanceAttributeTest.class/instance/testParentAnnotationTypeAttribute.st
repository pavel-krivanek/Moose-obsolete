tests
testParentAnnotationTypeAttribute
	| type instance |
	type := FAMIXAnnotationTypeAttribute new.
	instance := FAMIXAnnotationInstanceAttribute new.
	instance annotationTypeAttribute: type.
	self assert: type annotationAttributeInstances size equals: 1