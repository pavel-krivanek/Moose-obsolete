tests
testInstances
	| type instance |
	type := self actualClass new.
	instance := FAMIXAnnotationInstanceAttribute new.
	type annotationAttributeInstances: (OrderedCollection with: instance).
	self assert: type annotationAttributeInstances size equals: 1.
	self assert: instance annotationTypeAttribute equals: type