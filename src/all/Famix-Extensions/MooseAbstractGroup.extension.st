Extension { #name : #MooseAbstractGroup }

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allAccesses [
	
	<navigation: 'All accesses'>
	^self allWithType: FmxNGTAccess 
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allAttributes [
	
	<navigation: 'All attributes'>
	^self allWithType: FmxNGAttribute 
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allClasses [
	<navigation: 'All classes'>
	^ self allWithSubTypesOf: FmxNGClass ofGroupClass: FAMIXClassGroup
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allComments [
	
	<navigation: 'All comments'>
	^self allWithType: FmxNGTComment 
	
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allFunctions [
	<navigation: 'All functions'>
	^ self allWithType: FmxNGFunction
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allGlobalVariables [
	
	<navigation: 'All global variables'>
	^self allWithType: FmxNGGlobalVariable 
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allImplicitVariables [
	
	<navigation: 'All implicit variables'>
	^self allWithType: FmxNGImplicitVariable 
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allInheritanceDefinitions [
	
	<navigation: 'All inheritances'>
	^self allWithType: FmxNGInheritance 
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allInvocations [
	
	<navigation: 'All invocations'>
	^self allWithType: FmxNGInvocation 
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allLocalVariables [
	
	<navigation: 'All local variables'>
	^self allWithType: FmxNGLocalVariable 
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allMethods [
	<navigation: 'All methods'>

	^ self allWithType: FmxNGTMethod
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allModelClasses [
	<navigation: 'All model classes'>

	^ self privateState cacheAt: 'All model classes'
		ifAbsentPut: [
			MooseGroup
				withAll: ((self allClasses reject: [:each | each isStub or: [each isInterface]]) )
				withDescription: 'All model classes' ]
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allModelMethods [
	<navigation: 'All model methods'>
	
	^ self privateState
		cacheAt: 'All model methods'
		ifAbsentPut: [ self allMethods reject: [ :each | each parentTypeIsStub ] ]
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allModelNamespaces [
	<navigation: 'All model namespaces'>

	^ self privateState cacheAt: 'All model namespaces'
		ifAbsentPut: [
			MooseGroup
				withAll: (self allNamespaces select: [:each | 
					each classes notEmpty and: [
						each classes anySatisfy: [:class | class isStub not]]])
				withDescription: 'All model namespaces' ]
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allModelPackages [
	<navigation: 'All model packages'>

	^ self privateState cacheAt: 'All model packages'
		ifAbsentPut: [
			MooseGroup
				withAll: ((self allPackages reject: [:each | each isStub]) sorted:
																		[:p1 :p2 | p1 name < p2 name] )
				withDescription: 'All model packages' ]
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allModelTypes [
	<navigation: 'All model types'>

	^ self privateState cacheAt: 'All model types'
		ifAbsentPut: [
			(self allTypes reject: [:each | each isStub ])
				description: 'All model types' ]
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allNamespaces [
	
	<navigation: 'All namespaces'>
	^self allWithSubTypesOf: FmxNGTNamespace 
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allPackages [
	
	<navigation: 'All packages'>
	^self allWithSubTypesOf: FmxNGPackage 
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allParameters [
	
	<navigation: 'All parameters'>
	^self allWithType: FmxNGParameter 
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allPrimitiveTypes [
	
	<navigation: 'All primitive types'>
	^(self allWithType: FmxNGPrimitiveType) sorted: [:a :b | a name < b name]; yourself
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allReferences [
	
	<navigation: 'All references'>
	^self allWithType: FmxNGReference  
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allTypes [
	<navigation: 'All types'>
	^ self allWithSubTypesOf: FmxNGType ofGroupClass: FAMIXTypeGroup
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> allUnknownVariables [
	
	<navigation: 'All unknown variables'>
	^self allWithType: FmxNGUnknownVariable 
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> numberOfLinesOfCode [
	<MSEProperty: #numberOfLinesOfCode type: #Number>
	<MSEComment: 'The number of classes in the model'>
	^ self
		lookUpPropertyNamed: #numberOfLinesOfCode
		computedAs: [ self allMethods sum: #numberOfLinesOfCode ]
]

{ #category : #'*Famix-Extensions' }
MooseAbstractGroup >> numberOfPackages [
	<MSEProperty: #numberOfPackages type: #Number>
	<MSEComment: 'Total number of packages'>
	^ (self mooseModel isNotNil and: [ self mooseModel isSmalltalk ])
		ifTrue: [ self privateState propertyAt: #numberOfPackages ifAbsentPut: [ self allPackages size ] ]
		ifFalse: [ self privateState propertyAt: #numberOfPackages ifAbsentPut: [ self allNamespaces size ] ]
]
