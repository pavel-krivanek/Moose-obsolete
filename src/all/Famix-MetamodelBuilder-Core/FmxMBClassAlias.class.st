"
FamixMetamodelBuilderClassAlias
"
Class {
	#name : #FmxMBClassAlias,
	#superclass : #Object,
	#traits : 'FmxMBRelationSideTrait',
	#classTraits : 'FmxMBRelationSideTrait classTrait',
	#instVars : [
		'subject',
		'trait'
	],
	#category : #'Famix-MetamodelBuilder-Core-Implementation'
}

{ #category : #accessing }
FmxMBClassAlias >> addRelation: aRelation with: anotherClass [

	^ self subject addRelation: aRelation with: anotherClass
]

{ #category : #'relations - named' }
FmxMBClassAlias >> asRelationSideNamed: aPropertyName [

	^ self trait property: aPropertyName
]

{ #category : #accessing }
FmxMBClassAlias >> builder [

	^ trait builder
]

{ #category : #testing }
FmxMBClassAlias >> isMetamodelClass [

	^ false
]

{ #category : #testing }
FmxMBClassAlias >> isMetamodelTrait [

	^ false
]

{ #category : #accessing }
FmxMBClassAlias >> property: propertyName type: aTypeName [

	^ self trait property: propertyName type: aTypeName
]

{ #category : #'relations - named' }
FmxMBClassAlias >> propertyName [

	^ self trait propertyName
]

{ #category : #'as yet unclassified' }
FmxMBClassAlias >> relatedEntityName [

	^ self relatedEntity name
]

{ #category : #accessing }
FmxMBClassAlias >> subject [
	^ subject
]

{ #category : #accessing }
FmxMBClassAlias >> subject: anObject [
	subject := anObject
]

{ #category : #accessing }
FmxMBClassAlias >> trait [
	^ trait
]

{ #category : #accessing }
FmxMBClassAlias >> trait: anObject [
	trait := anObject
]

{ #category : #accessing }
FmxMBClassAlias >> traitName [

	^ self trait name
]
