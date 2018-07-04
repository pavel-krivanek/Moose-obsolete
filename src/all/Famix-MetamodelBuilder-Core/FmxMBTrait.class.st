"
FamixMetamodelBuilderTrait
"
Class {
	#name : #FmxMBTrait,
	#superclass : #FmxMBBehavior,
	#instVars : [
		'sides'
	],
	#category : #'Famix-MetamodelBuilder-Core-Implementation'
}

{ #category : #visitor }
FmxMBTrait >> acceptVisitor: aVisitor [

	^ aVisitor visitTrait: self.
]

{ #category : #generating }
FmxMBTrait >> as: aTraitName property: propertyName [

	self name = aTraitName
		ifFalse: [ FmxMBTraitRenamingError signal ].
	
	^ self property: propertyName

	
]

{ #category : #generating }
FmxMBTrait >> classGeneralization [

	^ self builder environment basicTrait
]

{ #category : #generating }
FmxMBTrait >> defaultSuperclass [
	
	^ self builder environment basicTrait
]

{ #category : #'settings-default' }
FmxMBTrait >> defaultTag [

	^ self builder traitTag
]

{ #category : #accessing }
FmxMBTrait >> generalization: anObject [

	FmxMBTraitsGeneralizationError signal
]

{ #category : #generating }
FmxMBTrait >> generate [

	| aTrait traitName |
		
	self willGenerate ifFalse: [ ^ self ].
	
	traitName := self fullName.
	
	aTrait := self builder environment createTraitNamed: traitName asSymbol slots: self slotDefinitions in: self packageName overwrite: true.

	aTrait tagWith: self tag.
	self builder environment setComment: self comment for: aTrait.
			
	self realClass: aTrait.
	
	self generateAccessors.
	self generateAnnotationIn: aTrait as: self name superclass: nil.
	
	self generateTestingMethodsIn: aTrait.
	self generateRootMetamodelMethodIn: aTrait.

]

{ #category : #generating }
FmxMBTrait >> generateAnnotationIn: aRealClass as: aName superclass: aSuperclass [

	| aSuperclassName |
	
	aSuperclassName := aSuperclass  
		ifNotNil: [ aSuperclass name ]
		ifNil: [ 
		aSuperclassName := (self classGeneralization = self defaultSuperclass) 
			ifTrue: [ self defaultSuperclass name]
			ifFalse: [ self classGeneralization 
				ifNil: [ self defaultSuperclass name ]
				ifNotNil: [ 
					self classGeneralization realClass name ] ] ].

	aRealClass classSide compile: ('annotation

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #{1} super: #{2}>
	<generated>
	<package: {3}>
	^self' format: { aName. aSuperclassName. self builder safeAnnotationPackageName})
		classified: 'meta'

]

{ #category : #initialization }
FmxMBTrait >> initialize [

	super initialize.
	

]

{ #category : #testing }
FmxMBTrait >> isMetamodelTrait [

	^ true
]

{ #category : #'name conversion' }
FmxMBTrait >> ownerPropertyName [
	
	| uncapitalized |
		
	uncapitalized := (self name withoutPrefix: 'T') uncapitalized.
	
	^ uncapitalized, 'Owner'.

]

{ #category : #'name conversion' }
FmxMBTrait >> pluralPropertyName [

	| uncapitalized |
	
	uncapitalized := (self name withoutPrefix: 'T') uncapitalized.
	
	^ (uncapitalized endsWith: 's')
		ifFalse: [ uncapitalized, 's' ]
		ifTrue: [ uncapitalized, 'es' ]
]

{ #category : #'name conversion' }
FmxMBTrait >> propertyName [
	
	^ (self name withoutPrefix: 'T') uncapitalized.
	
	
]

{ #category : #'name conversion' }
FmxMBTrait >> relatedOwnerTraitName [

	^ self name
]

{ #category : #accessing }
FmxMBTrait >> relatedTraitName [

	^ self name
]

{ #category : #accessing }
FmxMBTrait >> removeRelationSide: aRelationSide [

	properties remove: aRelationSide ifAbsent: [ ].
]
