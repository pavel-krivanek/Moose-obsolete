tests
testParentAnnotationTypeAttribute
	| type instance |
	type := FAMIXAnnotationTypeAttribute new.
	instance := self actualClass new.
	instance annotationTypeAttribute: type.
	self assert: type annotationAttributeInstances size equals: 1