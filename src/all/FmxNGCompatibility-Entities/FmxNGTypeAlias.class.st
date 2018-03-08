Class {
	#name : #FmxNGTypeAlias,
	#superclass : #FmxNGTypeAliasGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGTypeAlias class >> annotation [

	<MSEClass: #TypeAlias super: #FmxNGTypeAliasGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #'Famix-Implementation' }
FmxNGTypeAlias >> allSubclassesDo: aBlock [
	"we override this traversal because we want to
	traverse the real type as well"
	self realType ifNotNil: [:a | a allSubclassesDo: aBlock].

]

{ #category : #'Famix-Implementation' }
FmxNGTypeAlias >> allSuperclassesDo: aBlock [
	"we override this traversal because we want to
	traverse the aliased type as well"
	self realType ifNotNil: [:a | a allSuperclassesDo: aBlock]
]

{ #category : #'Famix-Implementation' }
FmxNGTypeAlias >> realType [
	"The alias type is just an alias.
	The real type is the one provided by the aliasedType "
	^ self aliasedType isNil 
		ifTrue: [nil]
		ifFalse: [self aliasedType realType]
]
