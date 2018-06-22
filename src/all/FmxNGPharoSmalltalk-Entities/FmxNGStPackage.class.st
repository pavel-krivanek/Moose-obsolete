Class {
	#name : #FmxNGStPackage,
	#superclass : #FmxNGStScopingEntity,
	#traits : 'FmxNGTPackage',
	#classTraits : 'FmxNGTPackage classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStPackage class >> annotation [

	<generated>
	<MSEClass: #Package super: #FmxNGStScopingEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStPackage class >> generatedSlotNames [
	<generated>
	'FmxNGStPackage class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStPackage class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTPackage)
]

{ #category : #meta }
FmxNGStPackage class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Extensions-metrics' }
FmxNGStPackage >> abstractness [
	"Abstractness is the ratio between the number of abstract classes and the total number of classes in a package, in the range [0, 1]. 0 means the package is fully concrete, 1 it is fully abstract."
	<MSEProperty: #abstractness type: #Number>
	<derived>
	<MSEComment: 'Abstractness of a package'>

	| nsClasses |
	nsClasses := self allClasses select: [:c | c isInstanceSide].
	(nsClasses size == 0) ifTrue: [^nil].
	
	^ (nsClasses select: [:c | c isAbstract]) size / (nsClasses size)
]

{ #category : #'Famix-Extensions' }
FmxNGStPackage >> allClasses [
	^self classes union: self extensionClasses
]

{ #category : #accessing }
FmxNGStPackage >> classes [

	^ self privateState 	cacheAt: #classes 
							ifAbsentPut: [ self childEntities select: [ :child | child isClass ]]
]

{ #category : #accessing }
FmxNGStPackage >> clientPackages [
	"^ self inheritedByPackages union: self invokingPackages"

	^ (self queryAllIncoming atScope: FmxNGTPackage) withoutSelfLoops
]

{ #category : #accessing }
FmxNGStPackage >> clientTypes [
	<MSEProperty: #clientTypes type: #FmxNGStType>
	<multivalued>
	<derived>
	<MSEComment: 'All types that depend on the receiver'>
	^ (self queryAllIncoming atScope: FmxNGTType) withoutSelfLoops
]

{ #category : #accessing }
FmxNGStPackage >> extendedClasses [
	"select all classes extended in this package"

	^ self privateState cacheAt: #extendedClasses
							ifAbsentPut: [ self classes select: [ :c| c isExtended ] ]
	
]

{ #category : #accessing }
FmxNGStPackage >> extensionClasses [
	"select all classes extended by this package"

	^ self privateState 
		cacheAt: #extensionClasses
		ifAbsentPut: [ self extensionMethods collectAsSet: [ :method | method parentType ] ]
]

{ #category : #accessing }
FmxNGStPackage >> extensionMethods [
	"select all class extensions made by this package"

	^ self privateState 
		cacheAt: #extensionMethods 
		ifAbsentPut: [ self childEntities select: [ :child | child isMethod ]]
]

{ #category : #accessing }
FmxNGStPackage >> localClasses [
	"select all local classes. Just an alias"

	^ self classes
]

{ #category : #accessing }
FmxNGStPackage >> localClassesGroup [
	<navigation: 'Local classes'>

	^ FAMIXClassGroup 
		withAll: self localClasses
		withDescription: 'Local classes'
]

{ #category : #accessing }
FmxNGStPackage >> localMethods [
	"select all local methods"

	^ self privateState 
			cacheAt: #localMethods 
			ifAbsentPut: [ self classes flatCollect: [:c | c localMethods ]]
]

{ #category : #accessing }
FmxNGStPackage >> methods [
	^ self localMethods union: self extensionMethods
]

{ #category : #accessing }
FmxNGStPackage >> namespaceScope [

	self shouldNotImplement 

]

{ #category : #accessing }
FmxNGStPackage >> numberOfClasses [
	<MSEProperty: #numberOfClasses type: #Number>
	<derived>
	<MSEComment: 'The number of classes in a package'>
	
	^ self classes size
]

{ #category : #accessing }
FmxNGStPackage >> numberOfClientPackages [
"	<property: #CP longName: 'Number of client packages' description:
			'The number of packages which depend on this package'>"

	<MSEProperty: #numberOfClientPackages type: #Number>
	<MSEComment: 'The number of packages which depend on this package'>
	<derived>

	^ self lookUpPropertyNamed: #numberOfClientPackages
				 computedAs: [ self clientPackages size ]
]

{ #category : #accessing }
FmxNGStPackage >> numberOfClientPackages: aNumber [

	self privateState propertyAt: #numberOfClientPackages put: aNumber
]

{ #category : #accessing }
FmxNGStPackage >> packageScope [

	^ self
]

{ #category : #accessing }
FmxNGStPackage >> providerPackages [
	"^ self inheritedPackages union: self invokedPackages"

	^ (self queryAllOutgoing atScope: FmxNGTPackage) withoutSelfLoops
]

{ #category : #accessing }
FmxNGStPackage >> providerTypes [
	<MSEProperty: #providerTypes type: #FmxNGStType>
	<derived>
	<multivalued>
	<MSEComment: 'All types that the receiver depends on'>
	^ (self queryAllOutgoing atScope: FmxNGTType) withoutSelfLoops
]

{ #category : #accessing }
FmxNGStPackage >> relativeImportanceForSystem [
	<MSEProperty: #relativeImportanceForSystem type: #Number>
	<derived>
	<MSEComment: 'The number of client packages normalized by the total number of packages'>
	
	^ self lookUpPropertyNamed: #relativeImportanceForSystem
				 computedAs: [
					(self mooseModel allModelPackages size > 1)
						ifTrue:[
							self numberOfClientPackages / (self mooseModel allModelPackages size - 1)
							]
						ifFalse: [0]
						]
]
