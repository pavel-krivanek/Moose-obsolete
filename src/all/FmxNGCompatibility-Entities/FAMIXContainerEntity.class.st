Class {
	#name : #FAMIXContainerEntity,
	#superclass : #FAMIXNamedEntity,
	#traits : 'FmxNGTWithAnnotationTypes + FmxNGTWithFunctions + FmxNGTWithTypes + TOODependencyQueries',
	#classTraits : 'FmxNGTWithAnnotationTypes classTrait + FmxNGTWithFunctions classTrait + FmxNGTWithTypes classTrait + TOODependencyQueries classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXContainerEntity class >> annotation [

	<generated>
	<MSEClass: #ContainerEntity super: #FAMIXNamedEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FAMIXContainerEntity class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXContainerEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTWithAnnotationTypes FmxNGTWithFunctions FmxNGTWithTypes)
]

{ #category : #meta }
FAMIXContainerEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Extensions' }
FAMIXContainerEntity >> accept: aVisitor [

	aVisitor visitContainerEntity: self
]

{ #category : #'Famix-Implementation' }
FAMIXContainerEntity >> addClass: aClass [
	
	types add: aClass
]

{ #category : #accessing }
FAMIXContainerEntity >> addFunction: aFunction [ 
	functions add: aFunction
]

{ #category : #accessing }
FAMIXContainerEntity >> addType: aType [ 
	types add: aType
]

{ #category : #'Famix-Implementation' }
FAMIXContainerEntity >> classes [
	"Classes are usually seen as types from the point of view of a Container. However, there may other types (e.g. aspects) which we dont want to see as classes and are rejected by this method."
	<navigation: 'Classes'>

	^ self privateState 
				cacheAt: #classes 
				ifAbsentPut: [self types select: [:type| type isClass ]]
]

{ #category : #'Famix-Extensions' }
FAMIXContainerEntity >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	anEntity types do: [:t|
		self addType: (aVisitor visit: t) ].

	
]

{ #category : #'Famix-Implementation' }
FAMIXContainerEntity >> isContainerEntity [
	^ true
]

{ #category : #'Moose-Finder' }
FAMIXContainerEntity >> mooseFinderFunctionsIn: composite [
	<moosePresentationOrder: 40>
	composite list 
		title: 'Functions';
		titleIcon: MooseIcons famixFunctionGroup;
		display: [ self functions ];
		format: [ :each | each mooseName ];
		when: [ self functions notEmpty ]
]

{ #category : #'Moose-Finder' }
FAMIXContainerEntity >> mooseFinderTypesIn: composite [
	<moosePresentationOrder: 40>
	composite list 
		title: 'Types';
		titleIcon: MooseIcons famixClassGroup;
		display: [ self types ];
		format: [ :each | each mooseName ];
		when: [ self types notEmpty ]
]

{ #category : #'Famix-Java' }
FAMIXContainerEntity >> mooseNameWithDots [
	^ self mooseName ifNotNil: [ '.' join: (self mooseName substrings: '::') ]
]

{ #category : #accessing }
FAMIXContainerEntity >> numberOfChildren [
	<MSEProperty: #numberOfChildren type: #Number>
	<MSEComment: 'Number of direct children entities in the containment tree.'>
	<derived>
	
	^ self children size
]
