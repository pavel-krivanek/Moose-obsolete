"
This trait provides a common, paradigm agnostic vocabulary to query dependencies of association entities at meta level.

For more informations: https://moosequery.ferlicot.fr/
"
Trait {
	#name : #TAssociationMetaLevelDependency,
	#category : #'Moose-Query'
}

{ #category : #accessing }
TAssociationMetaLevelDependency classSide >> dependencyFM3PropertyDescription [
	"Return all the properties corresponding to the source or the target of the association"

	^ self allDeclaredProperties select: [ :e | e isSource or: [ e isTarget ] ]
]

{ #category : #private }
TAssociationMetaLevelDependency classSide >> privateSourceTypes [
	"I return the classes that could be my source"

	^ self dependencyFM3PropertyDescription select: #isSource thenCollect: [ :each | each type implementingClass ]
]

{ #category : #private }
TAssociationMetaLevelDependency classSide >> privateTargetTypes [
	"I return the classes that could be my target"

	^ self dependencyFM3PropertyDescription select: #isTarget thenCollect: [ :each | each type implementingClass ]
]

{ #category : #accessing }
TAssociationMetaLevelDependency classSide >> sourceTypes [
	^ self explicitRequirement
]

{ #category : #accessing }
TAssociationMetaLevelDependency classSide >> targetTypes [
	^ self explicitRequirement
]

{ #category : #accessing }
TAssociationMetaLevelDependency >> dependencyFM3PropertyDescription [
	^ self class dependencyFM3PropertyDescription
]

{ #category : #accessing }
TAssociationMetaLevelDependency >> sourceTypes [
	^ self class sourceTypes
]

{ #category : #accessing }
TAssociationMetaLevelDependency >> targetTypes [
	^ self class targetTypes
]
