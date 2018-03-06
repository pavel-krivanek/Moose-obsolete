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

	self assert: propertyName isString.
	
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

	| aTrait traitName userClass |
		
	self willGenerate ifFalse: [ ^ self ].
	
	traitName := self fullName.
	
	aTrait := self builder environment createTraitNamed: traitName, 'Generated' asSymbol slots: self slotDefinitions in: self packageName overwrite: true.
	userClass := self builder environment createTraitNamed: traitName asSymbol slots: self slotDefinitions in: self packageName overwrite: false.


	aTrait tagWith: self tag.
	self builder environment setComment: self comment for: aTrait.
			
	self realClass: aTrait.
	self realUserClass: userClass.
	
	self generateAccessors.
	self generateAnnotationIn: aTrait as: self name, 'Generated'.
	self generateAnnotationIn: userClass as: self name.

]

{ #category : #generating }
FamixMetamodelBuilderTrait >> generateAnnotationIn: aRealClass as: aName [ 

	| aSuperclassName |
	
	aSuperclassName :=  (self classGeneralization = self defaultSuperclass) 
		ifTrue: [ self defaultSuperclass name]
		ifFalse: [ self classGeneralization 
			ifNil: [ self defaultSuperclass name ]
			ifNotNil: [ 
				self classGeneralization realClass name ] ].

	aRealClass classSide compile: ('annotation

	<ignoreInTraitUsers>
	<MSEClass: #{1} super: #{2}>
	<package: {3}>
	^self' format: { aName. aSuperclassName. self builder safePackageName})
		classified: 'meta'

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
