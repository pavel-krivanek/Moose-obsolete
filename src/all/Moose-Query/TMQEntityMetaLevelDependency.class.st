Class {
	#name : #TMQEntityMetaLevelDependency,
	#superclass : #Object,
	#category : #'Moose-Query-FamixNG'
}

{ #category : #accessing }
TMQEntityMetaLevelDependency class >> allIncomingAssociationTypes [
   ^ self explicitRequirement
]

{ #category : #accessing }
TMQEntityMetaLevelDependency class >> allOutgoingAssociationTypes [
	^ self explicitRequirement
]

{ #category : #accessing }
TMQEntityMetaLevelDependency class >> dependencyFM3PropertyDescription [
	^ self allDeclaredProperties
		select: [ :e | e hasOpposite and: [ e opposite isSource or: [ e opposite isTarget ] ] ]
]

{ #category : #accessing }
TMQEntityMetaLevelDependency class >> incomingAssociationTypes [
	"Default value"

	^ self privateIncomingAssociationTypes
]

{ #category : #accessing }
TMQEntityMetaLevelDependency class >> incomingMSEProperties [
	^ self explicitRequirement
]

{ #category : #accessing }
TMQEntityMetaLevelDependency class >> outgoingAssociationTypes [
	"Default value"

	^ self privateOutgoingAssociationTypes
]

{ #category : #accessing }
TMQEntityMetaLevelDependency class >> outgoingMSEProperties [
	^ self explicitRequirement
]

{ #category : #accessing }
TMQEntityMetaLevelDependency class >> privateAllIncomingAssociationTypes [
   ^ (self allChildrenTypes flatCollectAsSet: #incomingAssociationTypes)
       addAll: self incomingAssociationTypes;
       yourself
]

{ #category : #accessing }
TMQEntityMetaLevelDependency class >> privateAllOutgoingAssociationTypes [
   ^ (self allChildrenTypes flatCollectAsSet: #outgoingAssociationTypes)
       addAll: self outgoingAssociationTypes;
       yourself
]

{ #category : #accessing }
TMQEntityMetaLevelDependency class >> privateIncomingAssociationTypes [
	^ self incomingMSEProperties collect: [ :d | d type implementingClass ]
]

{ #category : #accessing }
TMQEntityMetaLevelDependency class >> privateIncomingMSEProperties [
	^ self dependencyFM3PropertyDescription select: [ :p | p opposite isTarget ]
]

{ #category : #accessing }
TMQEntityMetaLevelDependency class >> privateOutgoingAssociationTypes [
	^ self outgoingMSEProperties collect: [ :d | d type implementingClass ]
]

{ #category : #accessing }
TMQEntityMetaLevelDependency class >> privateOutgoingMSEProperties [
	^ self dependencyFM3PropertyDescription select: [ :p | p opposite isSource ]
]

{ #category : #accessing }
TMQEntityMetaLevelDependency >> allIncomingAssociationTypes [
	^ self class allIncomingAssociationTypes
]

{ #category : #accessing }
TMQEntityMetaLevelDependency >> allOutgoingAssociationTypes [
	^ self class allOutgoingAssociationTypes
]

{ #category : #accessing }
TMQEntityMetaLevelDependency >> dependencyFM3PropertyDescription [
	^ self class dependencyFM3PropertyDescription
]

{ #category : #accessing }
TMQEntityMetaLevelDependency >> incomingAssociationTypes [
	^ self class incomingAssociationTypes
]

{ #category : #accessing }
TMQEntityMetaLevelDependency >> incomingMSEProperties [
	^ self class incomingMSEProperties 
]

{ #category : #accessing }
TMQEntityMetaLevelDependency >> outgoingAssociationTypes [
	^ self class outgoingAssociationTypes
]

{ #category : #accessing }
TMQEntityMetaLevelDependency >> outgoingMSEProperties [
	^ self class outgoingMSEProperties
]
