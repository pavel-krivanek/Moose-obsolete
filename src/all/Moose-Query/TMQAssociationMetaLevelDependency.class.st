Class {
	#name : #TMQAssociationMetaLevelDependency,
	#superclass : #Object,
	#classInstVars : [
		'possibleTargetClasses',
		'possibleSourceClasses'
	],
	#category : #'Moose-Query-FamixNG'
}

{ #category : #accessing }
TMQAssociationMetaLevelDependency class >> dependencyFM3PropertyDescription [
	"Return all the properties corresponding to the source or the target of the association"

	^ self allDeclaredProperties select: [ :e | e isSource or: [ e isTarget ] ]
]

{ #category : #accessing }
TMQAssociationMetaLevelDependency class >> possibleSourceClasses [
	^ self explicitRequirement
]

{ #category : #accessing }
TMQAssociationMetaLevelDependency class >> possibleTargetClasses [
	^ self explicitRequirement
]

{ #category : #accessing }
TMQAssociationMetaLevelDependency class >> privatePossibleSourcesClasses [
	"I return the classes that could be my source"

	^ self dependencyFM3PropertyDescription select: #isSource thenCollect: [ :each | each type implementingClass ]
]

{ #category : #accessing }
TMQAssociationMetaLevelDependency class >> privatePossibleTargetClasses [
	"I return the classes that could be my target"

	^ self dependencyFM3PropertyDescription select: #isTarget thenCollect: [ :each | each type implementingClass ]
]

{ #category : #accessing }
TMQAssociationMetaLevelDependency >> dependencyFM3PropertyDescription [
	^ self class dependencyFM3PropertyDescription
]
