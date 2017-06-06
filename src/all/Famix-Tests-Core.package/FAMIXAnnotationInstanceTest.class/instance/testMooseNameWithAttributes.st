tests
testMooseNameWithAttributes
	| entity type instance attributeType attributeInstance |
	type := FAMIXAnnotationType new.
	type name: 'AnAnnotationType'.
	attributeType := FAMIXAnnotationTypeAttribute new.
	attributeType name: 'attribute'.
	entity := FAMIXNamedEntity new.
	entity name: 'AnEntity'.
	instance := self actualClass new.
	instance annotationType: type.
	instance annotatedEntity: entity.
	attributeInstance := FAMIXAnnotationInstanceAttribute new.
	attributeInstance parentAnnotationInstance: instance.
	attributeInstance annotationTypeAttribute: attributeType.
	attributeInstance value: 'value'.
	self assert: instance name equals: '@AnAnnotationType on AnEntity'.
	self assert: instance mooseName equals: #'AnAnnotationType(value)-AnEntity'