Class {
	#name : #FmxNGStNamespace,
	#superclass : #FmxNGStScopingEntity,
	#traits : 'FmxNGTNamespace',
	#classTraits : 'FmxNGTNamespace classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStNamespace class >> annotation [

	<MSEClass: #Namespace super: #FmxNGStScopingEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStNamespace class >> generatedSlotNames [
	<generated>
	'FmxNGStNamespace class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStNamespace class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTNamespace)
]

{ #category : #meta }
FmxNGStNamespace class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Extensions-metrics' }
FmxNGStNamespace >> abstractness [
	"Abstractness is the ratio between the number of abstract classes and the total number of classes in a package, in the range [0, 1]. 0 means the package is fully concrete, 1 it is fully abstract."
	<MSEProperty: #abstractness type: #Number>
	<derived>
	<MSEComment: 'Abstractness of a package'>

	| nsClasses |
	nsClasses := self allClasses select: [:c | c isInstanceSide].
	(nsClasses size == 0) ifTrue: [^nil].
	
	^ (nsClasses select: [:c | c isAbstract]) size / (nsClasses size)
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FmxNGStNamespace >> clientNamespaces [
	"MooseCook was: ^ self inheritedByNamespaces union: self invokingNamespaces"

	^ (self queryAllIncoming atScope: FmxNGTNamespace) withoutSelfLoops
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FmxNGStNamespace >> isNamespace [
	^ true
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FmxNGStNamespace >> mooseNameOn: aStream [ 
	| parent |
	parent := self belongsTo.
	parent ifNotNil: 
		[ parent mooseNameOn: aStream.
		aStream
			nextPut: $:;
			nextPut: $: ].
	self name ifNotNil: [aStream nextPutAll: self name]
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FmxNGStNamespace >> namespaceScope [

	^ self 
]

{ #category : #'Famix-Extensions' }
FmxNGStNamespace >> numberOfClasses [
	<MSEProperty: #numberOfClasses type: #Number>
	<derived>
	<MSEComment: 'The number of classes in a namespace'>
	
	^self
		lookUpPropertyNamed: #numberOfClasses
		computedAs: [self types size]
]

{ #category : #'Famix-Extensions' }
FmxNGStNamespace >> numberOfClasses: aNumber [

	self privateState propertyAt: #numberOfClasses put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGStNamespace >> numberOfLinesOfCode [
	<MSEProperty: #numberOfLinesOfCode type: #Number>
	<derived>
	<MSEComment: 'The number of lines of code in a namespace'>
	
	^self
		lookUpPropertyNamed: #numberOfLinesOfCode
		computedAs: [
			self functions inject: (self types inject: 0 into: [ :sum :each | sum + each numberOfLinesOfCode])
				into: [ :sum :each | sum + each numberOfLinesOfCode]]
]

{ #category : #'Famix-Extensions' }
FmxNGStNamespace >> numberOfLinesOfCode: aNumber [

	self privateState propertyAt: #numberOfLinesOfCode put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGStNamespace >> numberOfMethods [
	<MSEProperty: #numberOfMethods type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a namespace'>
	
	^self
		lookUpPropertyNamed: #numberOfMethods
		computedAs: [self types inject: 0 into: [ :sum :each | sum + each numberOfMethods ]]
]

{ #category : #'Famix-Extensions' }
FmxNGStNamespace >> numberOfMethods: aNumber [

	self privateState propertyAt: #numberOfMethods put: aNumber
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FmxNGStNamespace >> packageScope [

	self shouldNotImplement
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FmxNGStNamespace >> providerNamespaces [
	"MooseCook was: ^ self inheritedNamespaces union: self invokedNamespaces"

	^ (self queryAllOutgoing atScope: FmxNGTNamespace) withoutSelfLoops
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FmxNGStNamespace >> providerTypes [
	<MSEProperty: #providerTypes type: #FmxNGStType>
	<derived>
	<multivalued>
	<MSEComment: 'All types that the receiver depends on'>
	^ (self queryAllOutgoing atScope: FmxNGTType) withoutSelfLoops
]
