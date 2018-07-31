Class {
	#name : #FmxNGJavaScopingEntity,
	#superclass : #FmxNGJavaContainerEntity,
	#traits : 'FmxNGTGlobalVariableScope + FmxNGTScopingEntity',
	#classTraits : 'FmxNGTGlobalVariableScope classTrait + FmxNGTScopingEntity classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaScopingEntity class >> annotation [

	<MSEClass: #ScopingEntity super: #FmxNGJavaContainerEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaScopingEntity class >> generatedSlotNames [
	<generated>
	'FmxNGJavaScopingEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaScopingEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTGlobalVariableScope FmxNGTScopingEntity)
]

{ #category : #meta }
FmxNGJavaScopingEntity class >> requirements [

	<generated>
	^ { FmxNGJavaScopingEntity }
]

{ #category : #'as yet unclassified' }
FmxNGJavaScopingEntity >> abstractness [
	"Abstractness is the ratio between the number of abstract classes and the total number of classes in a package, in the range [0, 1]. 0 means the package is fully concrete, 1 it is fully abstract."
	
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
FmxNGJavaScopingEntity >> accept: aVisitor [

	aVisitor visitScopingEntity: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaScopingEntity >> afferentCoupling [
	"Afferent coupling for a module is the number of modules that depend upon this module"
	
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
FmxNGJavaScopingEntity >> allClasses [
	| result |
	result := OrderedCollection new.
	self withAllChildScopesDo: [ :each | result addAll: each classes ].
	^ result
]

{ #category : #'as yet unclassified' }
FmxNGJavaScopingEntity >> allClassesGroup [
	<navigation: 'All classes'>
	^ FAMIXTypeGroup withAll: self allClasses withDescription: 'All classes from ', self printString
]

{ #category : #'as yet unclassified' }
FmxNGJavaScopingEntity >> allRecursiveClasses [
	self deprecated: 'Use allClasses'.
	^ self allClasses 
]

{ #category : #'as yet unclassified' }
FmxNGJavaScopingEntity >> belongsTo [
	
	^ self parentScope ifNil: [ self parentPackage ]
]

{ #category : #accessing }
FmxNGJavaScopingEntity >> belongsTo: anObject [

	<generated>
	self parentScope: anObject

]

{ #category : #'as yet unclassified' }
FmxNGJavaScopingEntity >> bunchCohesion [
	"Computing cohesion (Bunch formula)"

	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
FmxNGJavaScopingEntity >> bunchCouplingWith: aScope [
	"Computing coupling (Bunch formula) with aScope"

	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
FmxNGJavaScopingEntity >> childrenOfMyKind [
	"Polymorphic accessor to children of this scope in a hierarchical structure (package->subpackages, scope->subscopes)"

	^ self children allWithSubTypesOf: self class
]

{ #category : #'as yet unclassified' }
FmxNGJavaScopingEntity >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	anEntity globalVariables do: [ :glv | 
		self addGlobalVariable: (aVisitor visit: glv) ].
	anEntity childScopes do: [ :cs | 
		self addChildScope: (aVisitor visit: cs) ].
	anEntity functions do: [ :f | "empty loop in smalltalk models"
		self addFunction: (aVisitor visit: f) ].
]

{ #category : #'as yet unclassified' }
FmxNGJavaScopingEntity >> distance [
	"D = A + I - 1. A package should be balanced between abstractness and instability, i.e., somewhere between abstract and stable or concrete and unstable. This rule defines the main sequence by the equation A + I - 1 = 0. D is the distance to the main sequence."
	
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
FmxNGJavaScopingEntity >> efferentCoupling [
	"Efferent coupling for a module is the number of modules it depends upon"
	
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
FmxNGJavaScopingEntity >> instability [
	"I =	Ce(P)/(Ce(P)+Ca(P)), in the range [0, 1]. 0 means package is maximally stable (i.e., no dependency to other packages and can not change without big consequences), 1 means it is unstable."
	
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
FmxNGJavaScopingEntity >> methodScope [
	"This only makes sense to reject self loops in #collectAtScope:"

	^ self classes collectAsSet: [:c | c methods]
]

{ #category : #'as yet unclassified' }
FmxNGJavaScopingEntity >> structuralChildren [ 
	^ (OrderedCollection withAll: self childScopes), self classes 
]

{ #category : #'as yet unclassified' }
FmxNGJavaScopingEntity >> typeScope [
	"This only makes sense to reject self loops in #collectAtScope:"
	^ self classes
]

{ #category : #'as yet unclassified' }
FmxNGJavaScopingEntity >> withAllChildrenOfType: anSTClass [ 
	| all |
	all := OrderedCollection new.	
	self withAllChildScopesDo: [:each | each class = anSTClass ifTrue: [ all add: each ] ].
	^ (Smalltalk at: (anSTClass name, 'Group') asSymbol ifAbsent: [MooseGroup]) withAll: all
]
