Extension { #name : #FAMIXScopingEntity }

{ #category : #'*famix-extensions-metrics' }
FAMIXScopingEntity >> abstractness [
	"Abstractness is the ratio between the number of abstract classes and the total number of classes in a package, in the range [0, 1]. 0 means the package is fully concrete, 1 it is fully abstract."
	
	self subclassResponsibility
]

{ #category : #'*Famix-Extensions' }
FAMIXScopingEntity >> accept: aVisitor [

	aVisitor visitScopingEntity: self
]

{ #category : #'*famix-extensions-metrics' }
FAMIXScopingEntity >> afferentCoupling [
	"Afferent coupling for a module is the number of modules that depend upon this module"
	
	^ self subclassResponsibility
]

{ #category : #'*Famix-Extensions' }
FAMIXScopingEntity >> allChildScopes [
	| result |
	result := OrderedCollection new.
	self allChildScopesDo: [ :each | result add: each].
	^ result 
]

{ #category : #'*Famix-Extensions' }
FAMIXScopingEntity >> allChildScopesDo: aBlock [
	self childScopes do: [:each |
		each withAllChildScopesDo: aBlock ]
]

{ #category : #'*Famix-Extensions' }
FAMIXScopingEntity >> allChildScopesGroup [
	<navigation: 'All child scopes'>
	^ FAMIXNamespaceGroup withAll: self allChildScopes withDescription: 'All child scopes from ', self printString
]

{ #category : #'*Famix-Extensions' }
FAMIXScopingEntity >> allClasses [
	| result |
	result := OrderedCollection new.
	self withAllChildScopesDo: [ :each | result addAll: each classes ].
	^ result
]

{ #category : #'*Famix-Extensions' }
FAMIXScopingEntity >> allClassesGroup [
	<navigation: 'All classes'>
	^ FAMIXTypeGroup withAll: self allClasses withDescription: 'All classes from ', self printString
]

{ #category : #'*Famix-Extensions' }
FAMIXScopingEntity >> allParentScopesDo: aBlock [
	self parentScope notNil ifTrue: [
		self parentScope withAllParentScopesDo: aBlock ]
]

{ #category : #'*Famix-Extensions' }
FAMIXScopingEntity >> allRecursiveClasses [
	self deprecated: 'Use allClasses'.
	^ self allClasses 
]

{ #category : #'*Famix-Extensions' }
FAMIXScopingEntity >> allRecursiveScopes [
	self deprecated: 'Use allChildScopes'.
	^ self allChildScopes 
]

{ #category : #'*famix-extensions-metrics' }
FAMIXScopingEntity >> bunchCohesion [
	"Computing cohesion (Bunch formula)"

	^ self subclassResponsibility
]

{ #category : #'*famix-extensions-metrics' }
FAMIXScopingEntity >> bunchCouplingWith: aScope [
	"Computing coupling (Bunch formula) with aScope"

	^ self subclassResponsibility
]

{ #category : #'*Famix-Extensions' }
FAMIXScopingEntity >> childrenOfMyKind [
	"Polymorphic accessor to children of this scope in a hierarchical structure (package->subpackages, scope->subscopes)"

	^ self children allWithSubTypesOf: self class
]

{ #category : #'*Famix-Extensions' }
FAMIXScopingEntity >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	anEntity globalVariables do: [ :glv | 
		self addGlobalVariable: (aVisitor visit: glv) ].
	anEntity childScopes do: [ :cs | 
		self addChildScope: (aVisitor visit: cs) ].
	anEntity functions do: [ :f | "empty loop in smalltalk models"
		self addFunction: (aVisitor visit: f) ].
]

{ #category : #'*famix-extensions-metrics' }
FAMIXScopingEntity >> distance [
	"D = A + I - 1. A package should be balanced between abstractness and instability, i.e., somewhere between abstract and stable or concrete and unstable. This rule defines the main sequence by the equation A + I - 1 = 0. D is the distance to the main sequence."
	
	self subclassResponsibility
]

{ #category : #'*famix-extensions-metrics' }
FAMIXScopingEntity >> efferentCoupling [
	"Efferent coupling for a module is the number of modules it depends upon"
	
	^ self subclassResponsibility
]

{ #category : #'*famix-extensions-metrics' }
FAMIXScopingEntity >> instability [
	"I =	Ce(P)/(Ce(P)+Ca(P)), in the range [0, 1]. 0 means package is maximally stable (i.e., no dependency to other packages and can not change without big consequences), 1 means it is unstable."
	
	self subclassResponsibility
]

{ #category : #'*Famix-Extensions' }
FAMIXScopingEntity >> isRoot [
	^ self parentScope isNil
]

{ #category : #'*Famix-Extensions' }
FAMIXScopingEntity >> structuralChildren [ 
	^ (OrderedCollection withAll: self childScopes), self classes 
]

{ #category : #'*Famix-Extensions' }
FAMIXScopingEntity >> withAllChildScopes [
	| result |
	result := OrderedCollection new.
	self withAllChildScopesDo: [ :each | result add: each].
	^ result 
]

{ #category : #'*Famix-Extensions' }
FAMIXScopingEntity >> withAllChildScopesDo: aBlock [
	aBlock value: self.
	self allChildScopesDo: aBlock
]

{ #category : #'*Famix-Extensions' }
FAMIXScopingEntity >> withAllChildrenOfType: anSTClass [ 
	| all |
	all := OrderedCollection new.	
	self withAllChildScopesDo: [:each | each class = anSTClass ifTrue: [ all add: each ] ].
	^ (Smalltalk at: (anSTClass name, 'Group') asSymbol ifAbsent: [MooseGroup]) withAll: all
]

{ #category : #'*Famix-Extensions' }
FAMIXScopingEntity >> withAllParentScopes [
	| result |
	result := OrderedCollection new.
	self withAllParentScopesDo: [ :each | result add: each].
	^ result 
]

{ #category : #'*Famix-Extensions' }
FAMIXScopingEntity >> withAllParentScopesDo: aBlock [
	aBlock value: self.
	self allParentScopesDo: aBlock
]
