Class {
	#name : #FmxNGScopingEntity,
	#superclass : #FmxNGContainerEntity,
	#traits : 'FmxNGTGlobalVariableScope + FmxNGTScopingEntity',
	#classTraits : 'FmxNGTGlobalVariableScope classTrait + FmxNGTScopingEntity classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGScopingEntity class >> annotation [

	<generated>
	<MSEClass: #ScopingEntity super: #FmxNGContainerEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGScopingEntity class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGScopingEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTGlobalVariableScope FmxNGTScopingEntity)
]

{ #category : #meta }
FmxNGScopingEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Extensions-metrics' }
FmxNGScopingEntity >> abstractness [
	"Abstractness is the ratio between the number of abstract classes and the total number of classes in a package, in the range [0, 1]. 0 means the package is fully concrete, 1 it is fully abstract."
	
	self subclassResponsibility
]

{ #category : #'Famix-Extensions' }
FmxNGScopingEntity >> accept: aVisitor [

	aVisitor visitScopingEntity: self
]

{ #category : #accessing }
FmxNGScopingEntity >> addChildScope: aScopingEntity [ 
	childScopes add: aScopingEntity
]

{ #category : #accessing }
FmxNGScopingEntity >> addGlobalVariable: aGlobalVariable [ 
	globalVariables add: aGlobalVariable
]

{ #category : #'Famix-Extensions-metrics' }
FmxNGScopingEntity >> afferentCoupling [
	"Afferent coupling for a module is the number of modules that depend upon this module"
	
	^ self subclassResponsibility
]

{ #category : #'Famix-Extensions' }
FmxNGScopingEntity >> allChildScopes [
	| result |
	result := OrderedCollection new.
	self allChildScopesDo: [ :each | result add: each].
	^ result 
]

{ #category : #'Famix-Extensions' }
FmxNGScopingEntity >> allChildScopesDo: aBlock [
	self childScopes do: [:each |
		each withAllChildScopesDo: aBlock ]
]

{ #category : #'Famix-Extensions' }
FmxNGScopingEntity >> allChildScopesGroup [
	<navigation: 'All child scopes'>
	^ FAMIXNamespaceGroup withAll: self allChildScopes withDescription: 'All child scopes from ', self printString
]

{ #category : #'Famix-Extensions' }
FmxNGScopingEntity >> allClasses [
	| result |
	result := OrderedCollection new.
	self withAllChildScopesDo: [ :each | result addAll: each classes ].
	^ result
]

{ #category : #'Famix-Extensions' }
FmxNGScopingEntity >> allClassesGroup [
	<navigation: 'All classes'>
	^ FAMIXTypeGroup withAll: self allClasses withDescription: 'All classes from ', self printString
]

{ #category : #'Famix-Extensions' }
FmxNGScopingEntity >> allParentScopesDo: aBlock [
	self parentScope notNil ifTrue: [
		self parentScope withAllParentScopesDo: aBlock ]
]

{ #category : #'Famix-Extensions' }
FmxNGScopingEntity >> allRecursiveClasses [
	self deprecated: 'Use allClasses'.
	^ self allClasses 
]

{ #category : #'Famix-Extensions' }
FmxNGScopingEntity >> allRecursiveScopes [
	self deprecated: 'Use allChildScopes'.
	^ self allChildScopes 
]

{ #category : #accessing }
FmxNGScopingEntity >> belongsTo [
	^ self parentScope ifNil: [ self parentPackage ]
]

{ #category : #'Famix-Extensions-metrics' }
FmxNGScopingEntity >> bunchCohesion [
	"Computing cohesion (Bunch formula)"

	^ self subclassResponsibility
]

{ #category : #'Famix-Extensions-metrics' }
FmxNGScopingEntity >> bunchCouplingWith: aScope [
	"Computing coupling (Bunch formula) with aScope"

	^ self subclassResponsibility
]

{ #category : #'Famix-Extensions' }
FmxNGScopingEntity >> childrenOfMyKind [
	"Polymorphic accessor to children of this scope in a hierarchical structure (package->subpackages, scope->subscopes)"

	^ self children allWithSubTypesOf: self class
]

{ #category : #'Famix-Extensions' }
FmxNGScopingEntity >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	anEntity globalVariables do: [ :glv | 
		self addGlobalVariable: (aVisitor visit: glv) ].
	anEntity childScopes do: [ :cs | 
		self addChildScope: (aVisitor visit: cs) ].
	anEntity functions do: [ :f | "empty loop in smalltalk models"
		self addFunction: (aVisitor visit: f) ].
]

{ #category : #'Famix-Extensions-metrics' }
FmxNGScopingEntity >> distance [
	"D = A + I - 1. A package should be balanced between abstractness and instability, i.e., somewhere between abstract and stable or concrete and unstable. This rule defines the main sequence by the equation A + I - 1 = 0. D is the distance to the main sequence."
	
	self subclassResponsibility
]

{ #category : #'Famix-Extensions-metrics' }
FmxNGScopingEntity >> efferentCoupling [
	"Efferent coupling for a module is the number of modules it depends upon"
	
	^ self subclassResponsibility
]

{ #category : #'Famix-Extensions-metrics' }
FmxNGScopingEntity >> instability [
	"I =	Ce(P)/(Ce(P)+Ca(P)), in the range [0, 1]. 0 means package is maximally stable (i.e., no dependency to other packages and can not change without big consequences), 1 means it is unstable."
	
	self subclassResponsibility
]

{ #category : #'Famix-Extensions' }
FmxNGScopingEntity >> isRoot [
	^ self parentScope isNil
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGScopingEntity >> methodScope [
	"This only makes sense to reject self loops in #collectAtScope:"

	^ self classes collectAsSet: [:c | c methods]
]

{ #category : #'Moose-Finder' }
FmxNGScopingEntity >> mooseFinderChildrenTreeIn: composite [ 
	<moosePresentationOrder: 80>
	composite tree 
		titleIcon: MooseIcons mooseTree;
		title: 'Children tree';
		rootsExpanded;
		display: [:entity | {entity mooseInterestingEntity}];
		format: #name;
		children: [ :each | each structuralChildren sorted: [:entity1 :entity2 | entity1 name < entity2 name] ];
		icon: #mooseIcon
]

{ #category : #'Famix-Extensions' }
FmxNGScopingEntity >> root [
	^ self isRoot 
		ifTrue: [ self ]
		ifFalse: [ ^ self parentScope root ]
]

{ #category : #'Famix-Extensions' }
FmxNGScopingEntity >> structuralChildren [ 
	^ (OrderedCollection withAll: self childScopes), self classes 
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGScopingEntity >> typeScope [
	"This only makes sense to reject self loops in #collectAtScope:"
	^ self classes
]

{ #category : #'Famix-Extensions' }
FmxNGScopingEntity >> withAllChildScopes [
	| result |
	result := OrderedCollection new.
	self withAllChildScopesDo: [ :each | result add: each].
	^ result 
]

{ #category : #'Famix-Extensions' }
FmxNGScopingEntity >> withAllChildScopesDo: aBlock [
	aBlock value: self.
	self allChildScopesDo: aBlock
]

{ #category : #'Famix-Extensions' }
FmxNGScopingEntity >> withAllChildrenOfType: anSTClass [ 
	| all |
	all := OrderedCollection new.	
	self withAllChildScopesDo: [:each | each class = anSTClass ifTrue: [ all add: each ] ].
	^ (Smalltalk at: (anSTClass name, 'Group') asSymbol ifAbsent: [MooseGroup]) withAll: all
]

{ #category : #'Famix-Extensions' }
FmxNGScopingEntity >> withAllParentScopes [
	| result |
	result := OrderedCollection new.
	self withAllParentScopesDo: [ :each | result add: each].
	^ result 
]

{ #category : #'Famix-Extensions' }
FmxNGScopingEntity >> withAllParentScopesDo: aBlock [
	aBlock value: self.
	self allParentScopesDo: aBlock
]
