Class {
	#name : #FAMIXTypeTest,
	#superclass : #FAMIXNamedEntityTest,
	#category : #'Famix-Tests-Core'
}

{ #category : #helpers }
FAMIXTypeTest >> actualClass [
	^ FmxNGType
]

{ #category : #tests }
FAMIXTypeTest >> testBehaviorsWithDeclaredType [
	| type behaviour |
	type := self actualClass new.
	behaviour := FmxNGBehaviouralEntity new.
	behaviour declaredType: type.
	self assert: behaviour declaredType == type.
	self assert: type behavioursWithDeclaredType size equals: 1.
	self assert: (type behavioursWithDeclaredType includes: behaviour)
]

{ #category : #tests }
FAMIXTypeTest >> testStructuresWithDeclaredType [
	| type structure |
	type := self actualClass new.
	structure := FmxNGStructuralEntity new.
	structure declaredType: type.
	self assert: structure declaredType == type.
	self assert: type structuresWithDeclaredType size equals: 1.
	self assert: (type structuresWithDeclaredType includes: structure)
]
