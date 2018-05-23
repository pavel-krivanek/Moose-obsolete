Class {
	#name : #FAMIXTypeAlias,
	#superclass : #FAMIXType,
	#traits : 'FmxNGTTypeAlias',
	#classTraits : 'FmxNGTTypeAlias classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXTypeAlias class >> annotation [

	<generated>
	<MSEClass: #TypeAlias super: #FAMIXType>
	<package: #'FmxNGCompatibility-EntitiesOld'>
	<generated>
	^self
]

{ #category : #generator }
FAMIXTypeAlias class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXTypeAlias class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTTypeAlias)
]

{ #category : #meta }
FAMIXTypeAlias class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Implementation' }
FAMIXTypeAlias >> allSubclassesDo: aBlock [
	"we override this traversal because we want to
	traverse the real type as well"
	self realType ifNotNil: [:a | a allSubclassesDo: aBlock].

]

{ #category : #'Famix-Implementation' }
FAMIXTypeAlias >> allSuperclassesDo: aBlock [
	"we override this traversal because we want to
	traverse the aliased type as well"
	self realType ifNotNil: [:a | a allSuperclassesDo: aBlock]
]

{ #category : #'Famix-Implementation' }
FAMIXTypeAlias >> realType [
	"The alias type is just an alias.
	The real type is the one provided by the aliasedType "
	^ self aliasedType isNil 
		ifTrue: [nil]
		ifFalse: [self aliasedType realType]
]
