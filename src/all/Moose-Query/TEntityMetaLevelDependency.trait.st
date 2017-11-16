"
This trait provides a common, paradigm agnostic vocabulary to query dependencies of named entities at meta level.
"
Trait {
	#name : #TEntityMetaLevelDependency,
	#traits : 'TMetaLevelDependency',
	#classTraits : 'TMetaLevelDependency classTrait',
	#category : 'Moose-Query'
}

{ #category : #accessing }
TEntityMetaLevelDependency classSide >> allIncomingAssociationTypes [
   ^ self explicitRequirement
]

{ #category : #accessing }
TEntityMetaLevelDependency classSide >> allOutgoingAssociationTypes [
	^ self explicitRequirement
]

{ #category : #accessing }
TEntityMetaLevelDependency classSide >> dependencyFM3PropertyDescription [
	^ self allDeclaredProperties
		select: [ :e | e hasOpposite and: [ e opposite isSource or: [ e opposite isTarget ] ] ]
]

{ #category : #accessing }
TEntityMetaLevelDependency classSide >> incomingAssociationTypes [
	"Default value"

	^ self privateIncomingAssociationTypes
]

{ #category : #accessing }
TEntityMetaLevelDependency classSide >> incomingMSEProperties [
	^ self explicitRequirement
]

{ #category : #accessing }
TEntityMetaLevelDependency classSide >> outgoingAssociationTypes [
	"Default value"

	^ self privateOutgoingAssociationTypes
]

{ #category : #accessing }
TEntityMetaLevelDependency classSide >> outgoingMSEProperties [
	^ self explicitRequirement
]

{ #category : #accessing }
TEntityMetaLevelDependency classSide >> privateAllIncomingAssociationTypes [
   ^ (self allChildrenTypes flatCollectAsSet: #incomingAssociationTypes)
       addAll: self incomingAssociationTypes;
       yourself
]

{ #category : #accessing }
TEntityMetaLevelDependency classSide >> privateAllOutgoingAssociationTypes [
   ^ (self allChildrenTypes flatCollectAsSet: #outgoingAssociationTypes)
       addAll: self outgoingAssociationTypes;
       yourself
]

{ #category : #accessing }
TEntityMetaLevelDependency classSide >> privateIncomingAssociationTypes [
	^ self incomingMSEProperties collect: [ :d | d type implementingClass ]
]

{ #category : #accessing }
TEntityMetaLevelDependency classSide >> privateIncomingMSEProperties [
	^ self dependencyFM3PropertyDescription select: [ :p | p opposite isTarget ]
]

{ #category : #accessing }
TEntityMetaLevelDependency classSide >> privateOutgoingAssociationTypes [
	^ self outgoingMSEProperties collect: [ :d | d type implementingClass ]
]

{ #category : #accessing }
TEntityMetaLevelDependency classSide >> privateOutgoingMSEProperties [
	^ self dependencyFM3PropertyDescription select: [ :p | p opposite isSource ]
]

{ #category : #accessing }
TEntityMetaLevelDependency >> allIncomingAssociationTypes [
	^ self class allIncomingAssociationTypes
]

{ #category : #accessing }
TEntityMetaLevelDependency >> allOutgoingAssociationTypes [
	^ self class allOutgoingAssociationTypes
]

{ #category : #accessing }
TEntityMetaLevelDependency >> dependencyFM3PropertyDescription [
	^ self class dependencyFM3PropertyDescription
]

{ #category : #accessing }
TEntityMetaLevelDependency >> incomingAssociationTypes [
	^ self class incomingAssociationTypes
]

{ #category : #accessing }
TEntityMetaLevelDependency >> incomingMSEProperties [
	^ self class incomingMSEProperties 
]

{ #category : #accessing }
TEntityMetaLevelDependency >> outgoingAssociationTypes [
	^ self class outgoingAssociationTypes
]

{ #category : #accessing }
TEntityMetaLevelDependency >> outgoingMSEProperties [
	^ self class outgoingMSEProperties
]
