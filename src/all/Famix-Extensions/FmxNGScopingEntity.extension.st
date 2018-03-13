Extension { #name : #FmxNGScopingEntity }

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> abstractness [
	"Abstractness is the ratio between the number of abstract classes and the total number of classes in a package, in the range [0, 1]. 0 means the package is fully concrete, 1 it is fully abstract."
	
	self subclassResponsibility
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> accept: aVisitor [

	aVisitor visitScopingEntity: self
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> afferentCoupling [
	"Afferent coupling for a module is the number of modules that depend upon this module"
	
	^ self subclassResponsibility
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> allChildScopes [
	| result |
	result := OrderedCollection new.
	self allChildScopesDo: [ :each | result add: each].
	^ result 
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> allChildScopesDo: aBlock [
	self childScopes do: [:each |
		each withAllChildScopesDo: aBlock ]
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> allChildScopesGroup [
	<navigation: 'All child scopes'>
	^ FAMIXNamespaceGroup withAll: self allChildScopes withDescription: 'All child scopes from ', self printString
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> allClasses [
	| result |
	result := OrderedCollection new.
	self withAllChildScopesDo: [ :each | result addAll: each classes ].
	^ result
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> allClassesGroup [
	<navigation: 'All classes'>
	^ FAMIXTypeGroup withAll: self allClasses withDescription: 'All classes from ', self printString
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> allParentScopesDo: aBlock [
	self parentScope notNil ifTrue: [
		self parentScope withAllParentScopesDo: aBlock ]
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> bunchCohesion [
	"Computing cohesion (Bunch formula)"

	^ self subclassResponsibility
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> bunchCouplingWith: aScope [
	"Computing coupling (Bunch formula) with aScope"

	^ self subclassResponsibility
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> childrenOfMyKind [
	"Polymorphic accessor to children of this scope in a hierarchical structure (package->subpackages, scope->subscopes)"

	^ self children allWithSubTypesOf: self class
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	anEntity globalVariables do: [ :glv | 
		self addGlobalVariable: (aVisitor visit: glv) ].
	anEntity childScopes do: [ :cs | 
		self addChildScope: (aVisitor visit: cs) ].
	anEntity functions do: [ :f | "empty loop in smalltalk models"
		self addFunction: (aVisitor visit: f) ].
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> distance [
	"D = A + I - 1. A package should be balanced between abstractness and instability, i.e., somewhere between abstract and stable or concrete and unstable. This rule defines the main sequence by the equation A + I - 1 = 0. D is the distance to the main sequence."
	
	self subclassResponsibility
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> efferentCoupling [
	"Efferent coupling for a module is the number of modules it depends upon"
	
	^ self subclassResponsibility
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> instability [
	"I =	Ce(P)/(Ce(P)+Ca(P)), in the range [0, 1]. 0 means package is maximally stable (i.e., no dependency to other packages and can not change without big consequences), 1 means it is unstable."
	
	self subclassResponsibility
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> isRoot [
	^ self parentScope isNil
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> root [
	^ self isRoot 
		ifTrue: [ self ]
		ifFalse: [ ^ self parentScope root ]
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> structuralChildren [ 
	^ (OrderedCollection withAll: self childScopes), self classes 
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> withAllChildScopes [
	| result |
	result := OrderedCollection new.
	self withAllChildScopesDo: [ :each | result add: each].
	^ result 
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> withAllChildScopesDo: aBlock [
	aBlock value: self.
	self allChildScopesDo: aBlock
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> withAllChildrenOfType: anSTClass [ 
	| all |
	all := OrderedCollection new.	
	self withAllChildScopesDo: [:each | each class = anSTClass ifTrue: [ all add: each ] ].
	^ (Smalltalk at: (anSTClass name, 'Group') asSymbol ifAbsent: [MooseGroup]) withAll: all
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> withAllParentScopes [
	| result |
	result := OrderedCollection new.
	self withAllParentScopesDo: [ :each | result add: each].
	^ result 
]

{ #category : #'*Famix-Extensions' }
FmxNGScopingEntity >> withAllParentScopesDo: aBlock [
	aBlock value: self.
	self allParentScopesDo: aBlock
]
