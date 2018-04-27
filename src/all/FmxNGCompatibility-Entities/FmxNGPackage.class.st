Class {
	#name : #FmxNGPackage,
	#superclass : #FmxNGScopingEntity,
	#traits : 'FmxNGTPackage',
	#classTraits : 'FmxNGTPackage classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGPackage class >> annotation [

	<generated>
	<MSEClass: #Package super: #FmxNGScopingEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGPackage class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGPackage class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTPackage)
]

{ #category : #meta }
FmxNGPackage class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Implementation' }
FmxNGPackage >> abstractClasses [

	^ self classes select: [:c | c isAbstract]
]

{ #category : #accessing }
FmxNGPackage >> addChildNamedEntity: aNamedEntity [
	childEntities add: aNamedEntity
]

{ #category : #accessing }
FmxNGPackage >> childNamedEntities [

	^ self childEntities
]

{ #category : #accessing }
FmxNGPackage >> childNamedEntities: aNamedEntity [

	^ self childEntities: aNamedEntity
]

{ #category : #'Famix-Implementation' }
FmxNGPackage >> classes [

	^ self privateState 	cacheAt: #classes 
							ifAbsentPut: [ self childEntities select: [ :child | child isClass ]]
]

{ #category : #'Famix-Smalltalk' }
FmxNGPackage >> createPackagesFromCategories [
	<menuItem: 'Create packages from package categories' category: 'Utilities'>
	"Inspired by the Moose Smalltalk Category importer"
	| cat famixCat |
	
	self localClasses do:[ :class |
		cat := (Smalltalk at: class instanceSide name) category.
		famixCat := self mooseModel allPackages detect: [:each | each mooseName = cat] ifNone: [nil].
		famixCat ifNil: [
			famixCat := self mooseModel add: (FmxNGPackage new name: cat; stub: true)
		].
		class isStub
			ifFalse: [ famixCat stub: false ].
		class localMethods do:[:aMethod |
			aMethod parentPackage: famixCat ].
		class parentPackage: famixCat.
	].
	self privateState flushGroups.
	self mooseModel cacheMooseGroups
]

{ #category : #'Famix-Smalltalk' }
FmxNGPackage >> definedMethods [
	"alias"

	^ self localMethods
]

{ #category : #'Famix-Smalltalk' }
FmxNGPackage >> extendedClasses [
	"select all classes extended in this package"

	^ self privateState cacheAt: #extendedClasses
							ifAbsentPut: [ self classes select: [ :c| c isExtended ] ]
	
]

{ #category : #'Famix-Smalltalk' }
FmxNGPackage >> extendedClassesGroup [
	<navigation: 'Extended classes in package'>
	
	^ FAMIXClassGroup 
		withAll: self extendedClasses
		withDescription: 'Extended classes in package ', self name
]

{ #category : #'Famix-Smalltalk' }
FmxNGPackage >> extensionClasses [
	"select all classes extended by this package"

	^ self privateState 
		cacheAt: #extensionClasses
		ifAbsentPut: [ self extensionMethods collectAsSet: [ :method | method parentType ] ]
]

{ #category : #'Famix-Smalltalk' }
FmxNGPackage >> extensionClassesGroup [
	<navigation: 'Classes extended by package'>
	
	^ FAMIXClassGroup 
		withAll: self extensionClasses
		withDescription: 'Classes extended by package', self name
]

{ #category : #'Famix-Smalltalk' }
FmxNGPackage >> extensionMethods [
	"select all class extensions made by this package"

	^ self privateState 
		cacheAt: #extensionMethods 
		ifAbsentPut: [ self childEntities select: [ :child | child isMethod ]]
]

{ #category : #'Famix-Smalltalk' }
FmxNGPackage >> localClasses [
	"select all local classes. Just an alias"

	^ self classes
]

{ #category : #'Famix-Smalltalk' }
FmxNGPackage >> localClassesGroup [
	<navigation: 'Local classes'>

	^ FAMIXClassGroup 
		withAll: self localClasses
		withDescription: 'Local classes'
]

{ #category : #'Famix-Smalltalk' }
FmxNGPackage >> localMethods [
	"select all local methods"

	^ self privateState 
			cacheAt: #localMethods 
			ifAbsentPut: [ self classes flatCollect: [:c | c localMethods ]]
]

{ #category : #'Famix-Implementation' }
FmxNGPackage >> methods [
	^ self localMethods union: self extensionMethods
]

{ #category : #'Moose-Finder' }
FmxNGPackage >> mooseIcon [ 
	^ MooseIcons famixPackage
]

{ #category : #'moose-chef-scoping-filtering' }
FmxNGPackage >> namespaceScope [

	self shouldNotImplement 

]

{ #category : #'moose-chef-scoping-filtering' }
FmxNGPackage >> packageScope [

	^ self
]

{ #category : #'Famix-Implementation' }
FmxNGPackage >> printOn: aStream [ 
	| parent |
	parent := self parentPackage.
	parent ifNotNil: 
		[ parent printOn: aStream.
		aStream
			nextPut: $. ].
	self name ifNotNil: [ aStream nextPutAll: self name ].
	aStream nextPutAll: ' (Package)'
]

{ #category : #'moose-chef-scoping-filtering' }
FmxNGPackage >> selectWithinYourScope: aMooseQueryResult [
	^ aMooseQueryResult withinPackage: self
]
