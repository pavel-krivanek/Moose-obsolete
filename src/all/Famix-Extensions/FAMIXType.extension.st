Extension { #name : #FAMIXType }

{ #category : #'*Famix-Extensions' }
FAMIXType >> accept: aVisitor [

	aVisitor visitType: self
]

{ #category : #'*Famix-Extensions-navigation' }
FAMIXType >> accessTo: aFAMIXPackageOrFAMIXClass [ 

	|accesses|
	accesses := self methods flatCollect:[:each | each accesses].
	^ accesses 
		selectAsSet: [:access | (access variable isKindOf: #FAMIXAttribute) 
								and:[aFAMIXPackageOrFAMIXClass isAccessedBy: access]].
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> allAnnotationInstances [
	| result |
	result := OrderedCollection new.
	result addAll: self annotationInstances.
	result addAll: (self methods flatCollect: [ :each | each annotationInstances ]).
	^ result 
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> allAnnotationTypes [
	^ self allAnnotationInstances collectAsSet: #annotationType
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXType >> clientClasses [
	self deprecated: 'use clientTypes'.
	
	^ self clientTypes 
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXType >> clientNamespaces [
	"returns a set of all the namespaces that depend on (some classes of them inherit, staticly access, or use some methods of) the receiver"

	"Moose cook was: ^ self inheritedByNamespaces union: self invokingNamespaces"

	^ (self queryAllIncoming atScope: FmxNGNamespace) withoutSelfLoops
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXType >> clientPackages [
	"returns a set of all the packages that depend on (some classes of them inherit, staticly access, or use some methods of) the receiver"

	"Moose cook was: ^ self inheritedByPackages union: self invokingPackages"

	^ (self queryAllIncoming atScope: FmxNGPackage) withoutSelfLoops
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXType >> clientTypes [
	<MSEProperty: #clientTypes type: #FAMIXType>
	<multivalued>
	<derived>
	<MSEComment: 'All types that depend on (inherit, staticly access, or use some methods of) the receiver'>
	^ (self queryAllIncoming atScope: FmxNGType) withoutSelfLoops
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.

	anEntity superInheritances do: [:inh|
		aVisitor visit: inh ].
	anEntity attributes do: [:a |
		self addAttribute: (aVisitor visit: a) ].
	anEntity methods do: [:m|
		self addMethod: (aVisitor visit: m) ].

]

{ #category : #'*Famix-Extensions' }
FAMIXType >> fanIn [
	<MSEProperty: #fanIn type: #Number>
	<derived>
	<MSEComment: 'Number of client classes'>

	^self
		lookUpPropertyNamed: #fanIn
		computedAs: [self clientTypes size]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> fanIn: aNumber [

	self privateState propertyAt: #fanIn put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> fanOut [
	<MSEProperty: #fanOut type: #Number>
	<derived>
	<MSEComment: 'Number of provider classes'>

	^self
		lookUpPropertyNamed: #fanOut
		computedAs: [self providerTypes size]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> fanOut: aNumber [

	self privateState propertyAt: #fanOut put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> hasMethodWithSignature: aStringOrSymbol [
	| symbol |
	symbol := aStringOrSymbol asSymbol.
	^self methods anySatisfy: [:each | each signature asSymbol = symbol]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> hasMethodsAnnotatedWith: aString [
	^ self methods anySatisfy: [ :each | each isAnnotatedWith: aString ]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> hierarchyNestingLevel [
	<MSEProperty: #hierarchyNestingLevel type: #Number>
	<derived>
	<MSEComment: 'The nesting of a class inside the hierarchy'>

	^self
		lookUpPropertyNamed: #hierarchyNestingLevel
		computedAs:
			[| currentMaxDepth |
			(self directSuperclasses isEmpty or: [self isStub])
				ifTrue: [0]
				ifFalse:
					[currentMaxDepth := 0.
					self
						allSuperclassesDo:
							[:aClass | currentMaxDepth := currentMaxDepth max: aClass hierarchyNestingLevel].
					currentMaxDepth + 1]]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> hierarchyNestingLevel: aNumber [

	self privateState propertyAt: #hierarchyNestingLevel put: aNumber
]

{ #category : #'*Famix-Extensions-navigation' }
FAMIXType >> incomingAccesses [
	^ self privateState 
		cacheAt: #incomingAccesses
		ifAbsentPut: [ attributes flatCollect: [ :each | each incomingAccesses ] ]
]

{ #category : #'*Famix-Extensions-navigation' }
FAMIXType >> incomingAccessesGroup [
	<navigation: 'Incoming accesses'>
	^ self privateState cacheAt:
		 #incomingAccessesGroup
		ifAbsentPut:
			[MooseGroup
				withAll: self incomingAccesses
				withDescription: 'Incoming accesses to ' , self mooseName]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> isAbstract [
	<MSEProperty: #isAbstract type: #Boolean> <derived>
	<MSEComment: 'Flag true for abstract classes.'>
	
	^super isAbstract
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> isBrainClass [
	^ (self propertyNamed: #BrainClass) = true
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> isDataClass [
	^ (self propertyNamed: #DataClass) = true
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> isGodClass [
	^ (self propertyNamed: #GodClass) = true
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> isHierarchyRoot [
	^self superclassHierarchyGroup 
		allSatisfy: [:each | each isNil or: [each isStub] ]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> isHierarchyRootWithin: aClassGroup [
	^(self superclassHierarchyGroup intersection: aClassGroup) isEmpty
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> isInterface [
	^ false
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> isLonelyWithin: aClassGroup [
	^ ( self subclassHierarchyGroup intersection: aClassGroup ) isEmpty and: [
		( self superclassHierarchyGroup intersection: aClassGroup ) isEmpty ]
]

{ #category : #'*famix-extensions-operations' }
FAMIXType >> lookUp: aMethodSignature [ 
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

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfAbstractMethods [
	<MSEProperty: #numberOfAbstractMethods type: #Number>
	<derived>
	<MSEComment: 'The number of abstract methods in the class'>
	
	^self
		lookUpPropertyNamed: #numberOfAbstractMethods
		computedAs: [self methodsGroup count: [:each | each isAbstract]]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfAbstractMethods: aNumber [

	self privateState propertyAt: #numberOfAbstractMethods put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfAccessesToForeignData [
	<MSEProperty: #numberOfAccessesToForeignData type: #Number>
	<derived>
	<MSEComment: 'Number of accesses to foreign data'>
	
	^self
		lookUpPropertyNamed: #numberOfAccessesToForeignData
		computedAs: [self notExistentMetricValue]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfAccessesToForeignData: aNumber [

	self privateState propertyAt: #numberOfAccessesToForeignData put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfAccessorMethods [
	<MSEProperty: #numberOfAccessorMethods type: #Number>
	<derived>
	<MSEComment: 'The number of accessor methods in a class'>
	^ self
		lookUpPropertyNamed: #numberOfAccessorMethods
		computedAs: [ 
			| noa |
			noa := 0.
			self methods
				do: [ :method | 
					method isPureAccessor
						ifNotNil: [ 
							(method isPureAccessor or: [ (method propertyNamed: #AccessorMethod) isNil not ])
								ifTrue: [ noa := noa + 1 ] ] ].
			noa ]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfAccessorMethods: aNumber [

	self privateState propertyAt: #numberOfAccessorMethods put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfAnnotationInstances [
	<MSEProperty: #numberOfAnnotationInstances type: #Number>
	<derived>
	<MSEComment: 'The number of annotation instances defined in the class or in any of its methods'>

	^self
		lookUpPropertyNamed: #numberOfAnnotationInstances
		computedAs: [
			self annotationInstances size + (self methods inject: 0 into: [:sum :each | sum + each numberOfAnnotationInstances])]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfAnnotationInstances: aNumber [

	self privateState propertyAt: #numberOfAnnotationInstances put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfAttributes [
	<MSEProperty: #numberOfAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of attributes in the class'>
	
	^self
		lookUpPropertyNamed: #numberOfAttributes
		computedAs: [self attributes size]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfAttributes: aNumber [

	self privateState propertyAt: #numberOfAttributes put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfAttributesInherited [
	<MSEProperty: #numberOfAttributesInherited type: #Number>
	<derived>
	<MSEComment: 'The number of attributes in a class inherited from super classes'>	
	
	^self
		lookUpPropertyNamed: #numberOfAttributesInherited
		computedAs: [self inheritedAttributes size]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfAttributesInherited: aNumber [

	self privateState propertyAt: #numberOfAttributesInherited put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfChildren [
	<MSEProperty: #numberOfChildren type: #Number>
	<derived>
	<MSEComment: 'The number of subclasses of a class'>
	
	^self
		lookUpPropertyNamed: #numberOfChildren
		computedAs: [self subInheritances size]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfChildren: aNumber [

	self privateState propertyAt: #numberOfChildren put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfComments [
	<MSEProperty: #numberOfComments type: #Number>
	<derived>
	<MSEComment: 'The number of comments in a class'>

	^ self lookUpPropertyNamed: #numberOfComments computedAs: [
		self comments size + 
		(self methods asArray inject: 0 into: [:sum : el| 
			el numberOfComments + sum ]) ]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfComments: aNumber [

	self privateState propertyAt: #numberOfComments put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfConstructorMethods [
	<MSEProperty: #numberOfConstructorMethods type: #Number>
	<derived>
	<MSEComment: 'The number of constructor methods in a class'>
	^ self
		lookUpPropertyNamed: #numberOfConstructorMethods
		computedAs: [ 
			| nc |
			nc := 0.
			self methods
				do: [ :method | 
					method isConstructor
						ifNotNil: [ 
							method isConstructor
								ifTrue: [ nc := 1 ] ] ].
			nc ]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfConstructorMethods: aNumber [

	self privateState propertyAt: #numberOfConstructorMethods put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfDirectSubclasses [
	<MSEProperty: #numberOfDirectSubclasses type: #Number>
	<MSEComment: 'The number of direct subclasses'>
	<derived>

	^ self privateState propertyAt: #numberOfDirectSubclasses ifAbsentPut: [self directSubclasses size]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfDirectSubclasses: aNumber [

	self privateState propertyAt: #numberOfDirectSubclasses put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfDuplicatedLinesOfCodeInternally [
	<MSEProperty: #numberOfDuplicatedLinesOfCodeInternally type: #Number>
	<derived>
	<MSEComment: 'The number of duplicated lines of code internally'>		

	^self
		lookUpPropertyNamed: #numberOfDuplicatedLinesOfCodeInternally
		computedAs: [self notExistentMetricValue]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfDuplicatedLinesOfCodeInternally: aNumber [

	self privateState propertyAt: #numberOfDuplicatedLinesOfCodeInternally put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfLinesOfCode [

	<MSEProperty: #numberOfLinesOfCode type: #Number>
	<derived>
	<MSEComment: 'The number of lines of code in a class'>

	^self
		lookUpPropertyNamed: #numberOfLinesOfCode
		computedAs: [self methodsGroup sumNumbers: #numberOfLinesOfCode]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfLinesOfCode: aNumber [

	self privateState propertyAt: #numberOfLinesOfCode put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfMessageSends [
	<MSEProperty: #numberOfMessageSends type: #Number>
	<derived>
	<MSEComment: 'The number of message sends from a class'>
	
	^self
		lookUpPropertyNamed: #numberOfMessageSends
		computedAs: [self methodsGroup sumNumbers: #numberOfMessageSends]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfMessageSends: aNumber [

	self privateState propertyAt: #numberOfMessageSends put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfMethods [
	<MSEProperty: #numberOfMethods type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a class'>

	^self
		lookUpPropertyNamed: #numberOfMethods
		computedAs: [self methods size]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfMethods: aNumber [

	self privateState propertyAt: #numberOfMethods put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfMethodsAdded [
	<MSEProperty: #numberOfMethodsAdded type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a class added with respect to super classes'>	
	
	^self
		lookUpPropertyNamed: #numberOfMethodsAdded
		computedAs: [self addedMethods size]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfMethodsAdded: aNumber [

	self privateState propertyAt: #numberOfMethodsAdded put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfMethodsInHierarchy [
	<MSEProperty: #numberOfMethodsInHierarchy type: #Number>
	<derived>
	<MSEComment: 'The number of methods of a class included the inherited ones'>	
	
	| totNom |
	totNom := self methods size.
	self superclassHierarchyGroup
		do: [:aClass | totNom := totNom + aClass methods size].
	^totNom
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfMethodsInHierarchy: aNumber [

	self privateState propertyAt: #numberOfMethodsInHierarchy put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfMethodsInherited [
	<MSEProperty: #numberOfMethodsInherited type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a class inherited from super classes'>	

	^self
		lookUpPropertyNamed: #numberOfMethodsInherited
		computedAs: [self inheritedMethods size]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfMethodsInherited: aNumber [

	self privateState propertyAt: #numberOfMethodsInherited put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfMethodsOverriden [
	<MSEProperty: #numberOfMethodsOverriden type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a class overriden with respect to super classes'>
			
	^self
		lookUpPropertyNamed: #numberOfMethodsOverriden
		computedAs: [self numberOfMethods - self numberOfMethodsAdded]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfMethodsOverriden: aNumber [

	self privateState propertyAt: #numberOfMethodsOverriden put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfParents [
	<MSEProperty: #numberOfParents type: #Number>
	<derived>
	<MSEComment: 'The number of superclasses'>
			
	^self
		lookUpPropertyNamed: #numberOfParents
		computedAs: [self directSuperclasses size]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfParents: aNumber [

	self privateState propertyAt: #numberOfParents put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfPrivateAttributes [
	<MSEProperty: #numberOfPrivateAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of private attributes in a class'>
	
	^self
		lookUpPropertyNamed: #numberOfPrivateAttributes
		computedAs: [(self attributes select: [:each | each isPrivate]) size]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfPrivateAttributes: aNumber [

	self privateState propertyAt: #numberOfPrivateAttributes put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfPrivateMethods [
	<MSEProperty: #numberOfPrivateMethods type: #Number>
	<derived>
	<MSEComment: 'The number of private methods in a class'>
			
	^self
		lookUpPropertyNamed: #numberOfPrivateMethods
		computedAs: [(self methods select: [:each | each isPrivate]) size]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfPrivateMethods: aNumber [

	self privateState propertyAt: #numberOfPrivateMethods put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfProtectedAttributes [
	<MSEProperty: #numberOfProtectedAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of protected attributes in a class'>				
	
	^self
		lookUpPropertyNamed: #numberOfProtectedAttributes
		computedAs: [(self attributes select: [:each | each isProtected]) size]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfProtectedAttributes: aNumber [

	self privateState propertyAt: #numberOfProtectedAttributes put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfProtectedMethods [
	<MSEProperty: #numberOfProtectedMethods type: #Number>
	<derived>
	<MSEComment: 'The number of protected methods in a class'>		
	
	^self
		lookUpPropertyNamed: #numberOfProtectedMethods
		computedAs: [(self methods select: [:each | each isProtected]) size]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfProtectedMethods: aNumber [

	self privateState propertyAt: #numberOfProtectedMethods put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfPublicAttributes [
	<MSEProperty: #numberOfPublicAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of public attributes in a class'>
	
	^self
		lookUpPropertyNamed: #numberOfPublicAttributes
		computedAs: [(self attributes select: [:each | each isPublic]) size]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfPublicAttributes: aNumber [

	self privateState propertyAt: #numberOfPublicAttributes put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfPublicMethods [
	<MSEProperty: #numberOfPublicMethods type: #Number>
	<derived>
	<MSEComment: 'The number of public methods in a class'>		
		
	^self
		lookUpPropertyNamed: #numberOfPublicMethods
		computedAs: [(self methods select: [:each | each isPublic]) size]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfPublicMethods: aNumber [

	self privateState propertyAt: #numberOfPublicMethods put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfRevealedAttributes [
	<MSEProperty: #numberOfRevealedAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of public attributes plus the number of accessor methods'>		

	^self
		lookUpPropertyNamed: #numberOfRevealedAttributes
		computedAs:
			[self numberOfPublicAttributes + self numberOfAccessorMethods]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfRevealedAttributes: aNumber [

	self privateState propertyAt: #numberOfRevealedAttributes put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfStatements [
	<MSEProperty: #numberOfStatements type: #Number>
	<derived>
	<MSEComment: 'The number of statements in a class'>
			
	^self
		lookUpPropertyNamed: #numberOfStatements
		computedAs: [self methodsGroup sumNumbers: #numberOfStatements]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> numberOfStatements: aNumber [

	self privateState propertyAt: #numberOfStatements put: aNumber
]

{ #category : #'*Famix-Extensions-navigation' }
FAMIXType >> outgoingInvocations [
	^ self methods flatCollect: [ :each | each outgoingInvocations ]
]

{ #category : #'*Famix-Extensions-navigation' }
FAMIXType >> outgoingInvocationsGroup [
	<navigation: 'Outgoing invocations'>
	^ self privateState cacheAt:
		#outgoingInvocationsGroup
		ifAbsentPut:
			[MooseGroup
				withAll: self outgoingInvocations
				withDescription: 'Outgoing invocations from ' , self mooseName]
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXType >> providerClasses [
	self deprecated: 'use providerTypes'.
	^ self providerTypes
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXType >> providerNamespaces [
	"returns a set of all the namespaces that the receiver depends on (they include some classes that the receiver inherites, staticly accesses, or uses some of their methods)"

	"Moose cook was: ^ self inheritedNamespaces union: self invokedNamespaces"

	^ (self queryAllOutgoing atScope: FmxNGNamespace) withoutSelfLoops
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXType >> providerPackages [
	"returns a set of all the packages that the receiver depends on (they include some classes that the receiver inherites, staticly accesses, or uses some of their methods)"

	"Moose cook was: ^ self inheritedPackages union: self invokedPackages"

	^ (self queryAllOutgoing atScope: FmxNGPackage) withoutSelfLoops
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXType >> providerTypes [
	<MSEProperty: #providerTypes type: #FAMIXType>
	<derived>
	<multivalued>
	<MSEComment: 'All types that the receiver depends on (inherites, staticly accesses, or uses some of their methods)'>
	^ (self queryAllOutgoing atScope: FmxNGType) withoutSelfLoops
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> subclassHierarchyDepth [ 
	<MSEProperty: #subclassHierarchyDepth type: #Number>
	<derived>
	<MSEComment: 'The depth of the class hierarchy for which I am the root'>
		
	^ self directSubclasses isEmpty 
		ifTrue: [ 0 ] 
		ifFalse: 
			[ | currentMaxDepth| 
				currentMaxDepth := 0. 
				self allSubclassesDo: 
					[ :aClass | currentMaxDepth := currentMaxDepth max: aClass subclassHierarchyDepth ]. 
            1 + currentMaxDepth ] 
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> subclassHierarchyDepth: aNumber [

	self privateState propertyAt: #subclassHierarchyDepth put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> tightClassCohesion [
	<MSEProperty: #tightClassCohesion type: #Number>
	<derived>
	<MSEComment: 'Tight class cohesion of a class'>
	self flag: #TODO.
	^ self
		lookUpPropertyNamed: #tightClassCohesion
		computedAs: [ 
			| tcc accessDictionary nom |
			tcc := 0.
			accessDictionary := Dictionary new.
			self
				methodsDo: [ :eachMethod | 
					eachMethod accesses
						do: [ :eachAccess | 
							| var |
							var := eachAccess variable.
							var isAttribute
								ifTrue: [ 
									| varName accessedFrom |
									varName := var name.
									accessedFrom := accessDictionary at: varName ifAbsent: [  ].
									accessedFrom isNil
										ifTrue: [ 
											accessedFrom := Set new.
											accessDictionary at: varName put: accessedFrom ].
									accessedFrom add: eachMethod name ] ] ].
			accessDictionary values
				do: [ :each | 
					| size |
					size := each size.
					tcc := tcc + (size * (size - 1) / 2) ].
			nom := self numberOfMethods.
			tcc := (nom = 0 or: [ nom = 1 ])
				ifFalse: [ tcc / (nom * (nom - 1) / 2) ]
				ifTrue: [ 0 ].
			tcc asFloat ]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> tightClassCohesion: aNumber [

	self privateState propertyAt: #tightClassCohesion put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> totalNumberOfChildren [
	<MSEProperty: #totalNumberOfChildren type: #Number>
	<derived>	
	<MSEComment: 'The total number of subclasses of a class'>
	
	^self
		lookUpPropertyNamed: #totalNumberOfChildren
		computedAs: [self subclassHierarchyGroup size]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> totalNumberOfChildren: aNumber [

	self privateState propertyAt: #totalNumberOfChildren put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> weightOfAClass [
	<MSEProperty: #weightOfAClass type: #Number>
	<derived>
	<MSEComment: 'Weight of a class'>	
			
	^self
		lookUpPropertyNamed: #weightOfAClass
		computedAs: [self notExistentMetricValue]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> weightOfAClass: aNumber [

	self privateState propertyAt: #weightOfAClass put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> weightedMethodCount [
	<MSEProperty: #weightedMethodCount type: #Number>
	<derived>
	<MSEComment: 'The sum of the complexity in a class'>
			
	^self
		lookUpPropertyNamed: #weightedMethodCount
		computedAs: [self methodsGroup sumNumbers: #cyclomaticComplexity]
]

{ #category : #'*Famix-Extensions' }
FAMIXType >> weightedMethodCount: aNumber [

	self privateState propertyAt: #weightedMethodCount put: aNumber
]
