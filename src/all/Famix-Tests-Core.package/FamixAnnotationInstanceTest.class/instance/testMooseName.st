tests
testMooseName
	| entity type instance |
	type := FAMIXAnnotationType new.
	type name: 'AnAnnotationType'.
	entity := FAMIXNamedEntity new.
	entity name: 'AnEntity'.
	instance := FAMIXAnnotationInstance new.
	instance annotationType: type.
	instance annotatedEntity: entity.
	self assert: instance mooseName equals: #'AnAnnotationType()-AnEntity'