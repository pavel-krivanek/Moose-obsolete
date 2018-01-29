"
FamixMetamodelBuilderTrait
"
Class {
	#name : #FamixMetamodelBuilderTrait,
	#superclass : #FamixMetamodelBuilderBehavior,
	#instVars : [
		'sides'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #visitor }
FamixMetamodelBuilderTrait >> acceptVisitor: aVisitor [

	^ aVisitor visitTrait: self.
]

{ #category : #generating }
FamixMetamodelBuilderTrait >> as: aTraitName property: propertyName [

	^ self property: propertyName

	
]

{ #category : #accessing }
FamixMetamodelBuilderTrait >> asTrait [

	^ self
]

{ #category : #generating }
FamixMetamodelBuilderTrait >> classGeneralization [

	^ self builder environment basicTrait
]

{ #category : #generating }
FamixMetamodelBuilderTrait >> defaultSuperclass [
	
	^ self builder environment basicTrait
]

{ #category : #'settings-default' }
FamixMetamodelBuilderTrait >> defaultTag [

	^ self builder traitTag
]

{ #category : #accessing }
FamixMetamodelBuilderTrait >> generalization: anObject [

	self error: 'Traits cannot have a non-default superclasss'
]

{ #category : #generating }
FamixMetamodelBuilderTrait >> generate [

	| aTrait traitName |
	
	self willGenerate ifFalse: [ ^ self ].
	
	traitName := self fullName.
	
	aTrait := self builder environment createTraitNamed: traitName asSymbol slots: self slotDefinitions in: self packageName.
	aTrait tagWith: self tag.
	self builder environment setComment: self comment for: aTrait.
			
	self realClass: aTrait.
	
	self generateAccessors.
	self generateAnnotationIn: aTrait.

]

{ #category : #initialization }
FamixMetamodelBuilderTrait >> initialize [

	super initialize.
	

]

{ #category : #testing }
FamixMetamodelBuilderTrait >> isMetamodelTrait [

	^ true
]

{ #category : #'name conversion' }
FamixMetamodelBuilderTrait >> ownerPropertyName [
	
	| uncapitalized |
		
	uncapitalized := (self name withoutPrefix: 'T') uncapitalized.
	
	^ uncapitalized, 'Owner'.

]

{ #category : #'name conversion' }
FamixMetamodelBuilderTrait >> pluralPropertyName [

	| uncapitalized |
	
	uncapitalized := (self name withoutPrefix: 'T') uncapitalized.
	
	^ (uncapitalized endsWith: 's')
		ifFalse: [ uncapitalized, 's' ]
		ifTrue: [ uncapitalized, 'es' ]
]

{ #category : #'name conversion' }
FamixMetamodelBuilderTrait >> propertyName [
	
	^ (self name withoutPrefix: 'T') uncapitalized.
	
	
]

{ #category : #'name conversion' }
FamixMetamodelBuilderTrait >> relatedOwnerTraitName [

	^ self name
]

{ #category : #accessing }
FamixMetamodelBuilderTrait >> relatedTraitName [

	^ self name
]

{ #category : #accessing }
FamixMetamodelBuilderTrait >> removeRelationSide: aRelationSide [

	properties remove: aRelationSide ifAbsent: [ ].
]
