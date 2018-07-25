Class {
	#name : #FmxNGStType,
	#superclass : #FmxNGStContainerEntity,
	#traits : 'FmxNGTReferenceable + FmxNGTType + FmxNGTWithAttributes + FmxNGTWithTypedStructures',
	#classTraits : 'FmxNGTReferenceable classTrait + FmxNGTType classTrait + FmxNGTWithAttributes classTrait + FmxNGTWithTypedStructures classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStType class >> annotation [

	<MSEClass: #Type super: #FmxNGStContainerEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStType class >> generatedSlotNames [
	<generated>
	'FmxNGStType class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStType class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTReferenceable FmxNGTType FmxNGTWithAttributes FmxNGTWithTypedStructures)
]

{ #category : #meta }
FmxNGStType class >> requirements [

	<generated>
	^ { FmxNGStContainerEntity }
]

{ #category : #'Famix-Extensions' }
FmxNGStType >> addedMethods [
	| inheritedMethodNames |
	inheritedMethodNames := self inheritedMethods
		collect: [:each | each signature].
	^self methods
		reject: [:each | inheritedMethodNames includes: each signature]
]

{ #category : #adding }
FmxNGStType >> behavioursWithDeclaredType [

	^ self structuresWithDeclaredType
]

{ #category : #adding }
FmxNGStType >> behavioursWithDeclaredType: anObject [

	^ self structuresWithDeclaredType: anObject
]

{ #category : #adding }
FmxNGStType >> belongsTo [
	^ self container ifNil: [ self parentPackage ]
]

{ #category : #adding }
FmxNGStType >> belongsTo: aContainer [
	self container: aContainer 
]

{ #category : #adding }
FmxNGStType >> classSide [
	^self isClassSide
		ifFalse:
			[self mooseModel allClasses
				entityNamed: (self mooseName , '_class') asSymbol]
		ifTrue: [self]
]

{ #category : #adding }
FmxNGStType >> clientNamespaces [
	"returns a set of all the namespaces that depend on (some classes of them inherit, staticly access, or use some methods of) the receiver"

	"Moose cook was: ^ self inheritedByNamespaces union: self invokingNamespaces"

	^ (self queryAllIncoming atScope: FmxNGTNamespace) withoutSelfLoops
]

{ #category : #adding }
FmxNGStType >> clientPackages [
	"returns a set of all the packages that depend on (some classes of them inherit, staticly access, or use some methods of) the receiver"

	"Moose cook was: ^ self inheritedByPackages union: self invokingPackages"

	^ (self queryAllIncoming atScope: FmxNGTPackage) withoutSelfLoops
]

{ #category : #adding }
FmxNGStType >> clientTypes [
	<MSEProperty: #clientTypes type: #FmxNGStType>
	<multivalued>
	<derived>
	<MSEComment: 'All types that depend on (inherit, staticly access, or use some methods of) the receiver'>
	^ (self queryAllIncoming atScope: FmxNGTType) withoutSelfLoops
]

{ #category : #adding }
FmxNGStType >> container [

	<MSEProperty: #container type: #FmxNGStContainerEntity>
	<MSEComment: 'Deprected, use typeContainer'>
	<container>
	<derived>

	^ self typeContainer
]

{ #category : #adding }
FmxNGStType >> extendedInPackages [

	^ self privateState cacheAt: #extendedInPackages
							ifAbsentPut: [ self extendedMethods collectAsSet: [ :m| m packageScope ] ]


]

{ #category : #adding }
FmxNGStType >> extendedMethods [
	"select methods which are class extensions in this class"

	^  self privateState cacheAt: #extendedMethods
							ifAbsentPut: [ self methods select: [ :m| m isExtension ] ]
]

{ #category : #adding }
FmxNGStType >> hasMethodWithSignature: aStringOrSymbol [
	| symbol |
	symbol := aStringOrSymbol asSymbol.
	^self methods anySatisfy: [:each | each signature asSymbol = symbol]
]

{ #category : #adding }
FmxNGStType >> implementationOf: signature [
	self withSuperclassesDo: [ :class | | found |
			found := class methods
				detect: [ :method | method signature = signature ]
				ifNone: [ nil ].
			found ifNotNil: [ ^found ] ].
	^ nil
]

{ #category : #adding }
FmxNGStType >> implements: aString [
	^ self methods
		anySatisfy: [ :each | aString = each signature	 "was changed from match: for performances and because signature is case sensitive" ]
]

{ #category : #'Famix-Extensions' }
FmxNGStType >> incomingAccesses [
	^ self privateState 
		cacheAt: #incomingAccesses
		ifAbsentPut: [ attributes flatCollect: [ :each | each incomingAccesses ] ]
]

{ #category : #adding }
FmxNGStType >> incomingTypeDeclarations [
	^ self structuresWithDeclaredType , self behavioursWithDeclaredType collect: [ :var | MooseChefTypeDeclarationAssociation newFrom: var to: self ]
]

{ #category : #adding }
FmxNGStType >> instanceSide [
	^self isClassSide
		ifTrue:
			[self mooseModel allClasses
				entityNamed: (self mooseName removeSuffix: '_class') asSymbol]
		ifFalse: [self]
]

{ #category : #adding }
FmxNGStType >> isAbstract [
	<MSEProperty: #isAbstract type: #Boolean> <derived>
	<MSEComment: 'Flag true for abstract classes.'>
	
	^super isAbstract
]

{ #category : #testing }
FmxNGStType >> isAnonymousClass [
	^  self container notNil and: [
			self container isMethod or: [
				self name isAllDigits or: [
					'*_anonymous_*' match: self name ]] ]
]

{ #category : #adding }
FmxNGStType >> isClassSide [
	"Kind of a hack. Uses the FAMIX2 Smalltalk naming convention that every Smalltalk
	 metaclass has _class appended to the classname of the class it is a metaclass of."

	^'*_class' match: self name
]

{ #category : #adding }
FmxNGStType >> isExtended [

	^ self methods anySatisfy: [ :m| m isExtension ]
]

{ #category : #adding }
FmxNGStType >> isInnerClass [
	<MSEProperty: #isInnerClass type: #Boolean>
	<derived>
	<MSEComment:
		'True if the method is considered as an innerclass (i.e. is contained elsewhere than a java package: class, method, enum,...)'>
	^ self container ifNotNil: [ :c | c isNamespace not ] ifNil: [ false ]
]

{ #category : #adding }
FmxNGStType >> isInstanceSide [
	^self isClassSide not
]

{ #category : #adding }
FmxNGStType >> isJUnit3TestCase [
	^ self superclassHierarchy anySatisfy: [:each | each mooseName =  #'junit::framework::TestCase']
]

{ #category : #adding }
FmxNGStType >> isJUnit4TestCase [
	<MSEProperty: #isJUnit4TestCase type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is considered as a Junit 4 Java test'>
	^ self methods anySatisfy: [ :m | m isJUnit4Test ]
]

{ #category : #adding }
FmxNGStType >> isLonelyWithin: aClassGroup [
	^ ( self subclassHierarchyGroup intersection: aClassGroup ) isEmpty and: [
		( self superclassHierarchyGroup intersection: aClassGroup ) isEmpty ]
]

{ #category : #adding }
FmxNGStType >> isSUnitTestCase [
	self allSuperclassesDo: [:each | each name = 'TestCase' ifTrue: [^ true] ].
	^ false
]

{ #category : #adding }
FmxNGStType >> isTestCase [
	<MSEProperty: #isTestCase type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is considered as a Java test'>
	^ self isJUnit3TestCase or: [ self isJUnit4TestCase ] 
]

{ #category : #adding }
FmxNGStType >> localMethods [
	"select all locally defined methods"

	^ self privateState cacheAt: #localMethods
							ifAbsentPut: [ self methods reject: [ :m| m isExtension ] ]
]

{ #category : #adding }
FmxNGStType >> lookUp: aMethodSignature [ 
	"Returns the first method that has as signature #aMethodSignature. 
	The search starts from the receiver's methods and traveses the inherited methods from the receiver's superclasses heirarchy.
	If such a method has not been found, it returns nil"

	| c toSearchIt searchedM |
	c := self.
	searchedM := nil.
	toSearchIt := true.
	[c notNil and: [toSearchIt]] whileTrue: 
			[searchedM := c methods 
						detect: [:m | m signature = aMethodSignature]
						ifNone: [nil].
			searchedM
				ifNil: [c := c superclass]
				ifNotNil: [toSearchIt := false]
			].
	^searchedM
]

{ #category : #adding }
FmxNGStType >> mooseNameOn: aStream [ 
	| parent |
	parent := self typeContainer.
	parent ifNotNil: 
		[ 
			parent mooseNameOn: aStream.
			aStream
				nextPut: $:;
				nextPut: $: ].
	self name ifNotNil: [aStream nextPutAll: self name]
]

{ #category : #adding }
FmxNGStType >> namespaceScope [
	"we ask the container for the namespaceScope
	because we can have classes in methods or in other classes.
	Thus, we need to traverse recursively until we reach a namespace"
	
	^ self container 
		ifNotNil: [ self container namespaceScope ]
]

{ #category : #'Famix-Extensions' }
FmxNGStType >> packageScope [

	^ self parentPackage
]

{ #category : #'Famix-Extensions' }
FmxNGStType >> providerNamespaces [
	"returns a set of all the namespaces that the receiver depends on (they include some classes that the receiver inherites, staticly accesses, or uses some of their methods)"

	"Moose cook was: ^ self inheritedNamespaces union: self invokedNamespaces"

	^ (self queryAllOutgoing atScope: FmxNGTNamespace) withoutSelfLoops
]

{ #category : #'Famix-Extensions' }
FmxNGStType >> providerPackages [
	"returns a set of all the packages that the receiver depends on (they include some classes that the receiver inherites, staticly accesses, or uses some of their methods)"

	"Moose cook was: ^ self inheritedPackages union: self invokedPackages"

	^ (self queryAllOutgoing atScope: FmxNGTPackage) withoutSelfLoops
]

{ #category : #'Famix-Extensions' }
FmxNGStType >> providerTypes [
	<MSEProperty: #providerTypes type: #FmxNGStType>
	<derived>
	<multivalued>
	<MSEComment: 'All types that the receiver depends on (inherites, staticly accesses, or uses some of their methods)'>
	^ (self queryAllOutgoing atScope: FmxNGTType) withoutSelfLoops
]

{ #category : #'Famix-Implementation' }
FmxNGStType >> realType [
	"All types except the alias ones are real"
	^ self 
]

{ #category : #'Famix-Extensions' }
FmxNGStType >> typeScope [
	"all types are not classes. Redefined in FamixClass"

	^ self
]

{ #category : #'Famix-Extensions' }
FmxNGStType >> understands: signature [
	"returns true if a class is able to respond to an invocation to aSignature on itself; false otherwise"

	self withSuperclassesDo: [:each | 
		(each implements: signature) ifTrue: [^true]].
	^false
]
