"
This trait provides a common, paradigm agnostic vocabulary to query dependencies of association entities at meta level.
"
Trait {
	#name : #TAssociationMetaLevelDependency,
	#traits : 'TMetaLevelDependency',
	#classTraits : 'TMetaLevelDependency classTrait',
	#category : 'Moose-Query'
}

{ #category : #accessing }
TAssociationMetaLevelDependency classSide >> dependencyFM3PropertyDescription [
	"Return all the properties corresponding to the source or the target of the association"

	^ self allDeclaredProperties select: [ :e | e isSource or: [ e isTarget ] ]
]

{ #category : #accessing }
TAssociationMetaLevelDependency classSide >> possibleSourceClasses [
	^ self explicitRequirement
]

{ #category : #accessing }
TAssociationMetaLevelDependency classSide >> possibleTargetClasses [
	^ self explicitRequirement
]

{ #category : #accessing }
TAssociationMetaLevelDependency classSide >> privatePossibleSourcesClasses [
	"I return the classes that could be my source"

	^ self dependencyFM3PropertyDescription select: #isSource thenCollect: [ :each | each type implementingClass ]
]

{ #category : #accessing }
TAssociationMetaLevelDependency classSide >> privatePossibleTargetClasses [
	"I return the classes that could be my target"

	^ self dependencyFM3PropertyDescription select: #isTarget thenCollect: [ :each | each type implementingClass ]
]

{ #category : #accessing }
TAssociationMetaLevelDependency >> dependencyFM3PropertyDescription [
	^ self class dependencyFM3PropertyDescription
]
