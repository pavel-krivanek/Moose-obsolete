tests
testAnnotatedEntityBackPointer
	| entity instance |
	entity := FAMIXNamedEntity new.
	instance := self actualClass new.
	instance annotatedEntity: entity.
	self assert: entity annotationInstances size equals: 1.
	self assert: entity annotationInstances first equals: instance