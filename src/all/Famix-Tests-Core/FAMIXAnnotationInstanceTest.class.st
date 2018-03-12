Class {
	#name : #FAMIXAnnotationInstanceTest,
	#superclass : #FAMIXSourcedEntityTest,
	#category : #'Famix-Tests-Core'
}

{ #category : #helpers }
FAMIXAnnotationInstanceTest >> actualClass [
	^ FmxNGAnnotationInstance
]

{ #category : #tests }
FAMIXAnnotationInstanceTest >> testAnnotatedEntityBackPointer [
	| entity instance |
	entity := FmxNGNamedEntity new.
	instance := self actualClass new.
	instance annotatedEntity: entity.
	self assert: entity annotationInstances size equals: 1.
	self assert: entity annotationInstances first equals: instance
]

{ #category : #tests }
FAMIXAnnotationInstanceTest >> testAnnotationType [
	| type instance |
	type := FmxNGAnnotationType new.
	instance := self actualClass new.
	instance annotationType: type.
	self assert: type instances size equals: 1
]

{ #category : #tests }
FAMIXAnnotationInstanceTest >> testMooseName [
	| entity type instance |
	type := FmxNGAnnotationType new.
	type name: 'AnAnnotationType'.
	entity := FmxNGNamedEntity new.
	entity name: 'AnEntity'.
	instance := self actualClass new.
	instance annotationType: type.
	instance annotatedEntity: entity.
	self assert: instance mooseName equals: #'AnAnnotationType()-AnEntity'
]

{ #category : #tests }
FAMIXAnnotationInstanceTest >> testMooseNameWithAttributes [
	| entity type instance attributeType attributeInstance |
	type := FmxNGAnnotationType new.
	type name: 'AnAnnotationType'.
	attributeType := FmxNGAnnotationTypeAttribute new.
	attributeType name: 'attribute'.
	entity := FmxNGNamedEntity new.
	entity name: 'AnEntity'.
	instance := self actualClass new.
	instance annotationType: type.
	instance annotatedEntity: entity.
	attributeInstance := FmxNGAnnotationInstanceAttribute new.
	attributeInstance parentAnnotationInstance: instance.
	attributeInstance annotationTypeAttribute: attributeType.
	attributeInstance value: 'value'.
	self assert: instance name equals: '@AnAnnotationType on AnEntity'.
	self assert: instance mooseName equals: #'AnAnnotationType(value)-AnEntity'
]
