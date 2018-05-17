Class {
	#name : #FmxNGContainerEntity,
	#superclass : #FmxNGNamedEntity,
	#traits : 'FmxNGTWithAnnotationTypes + FmxNGTWithFunctions + FmxNGTWithTypes + TOODependencyQueries',
	#classTraits : 'FmxNGTWithAnnotationTypes classTrait + FmxNGTWithFunctions classTrait + FmxNGTWithTypes classTrait + TOODependencyQueries classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGContainerEntity class >> annotation [

	<generated>
	<MSEClass: #ContainerEntity super: #FmxNGNamedEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGContainerEntity class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGContainerEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTWithAnnotationTypes FmxNGTWithFunctions FmxNGTWithTypes)
]

{ #category : #meta }
FmxNGContainerEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #visiting }
FmxNGContainerEntity >> accept: aVisitor [

	aVisitor visitContainerEntity: self
]

{ #category : #visiting }
FmxNGContainerEntity >> addClass: aClass [
	
	types add: aClass
]

{ #category : #accessing }
FmxNGContainerEntity >> addFunction: aFunction [ 
	functions add: aFunction
]

{ #category : #accessing }
FmxNGContainerEntity >> addType: aType [ 
	types add: aType
]

{ #category : #accessing }
FmxNGContainerEntity >> classes [
	"Classes are usually seen as types from the point of view of a Container. However, there may other types (e.g. aspects) which we dont want to see as classes and are rejected by this method."
	<navigation: 'Classes'>

	^ self privateState 
				cacheAt: #classes 
				ifAbsentPut: [self types select: [:type| type isClass ]]
]

{ #category : #accessing }
FmxNGContainerEntity >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	anEntity types do: [:t|
		self addType: (aVisitor visit: t) ].

	
]

{ #category : #testing }
FmxNGContainerEntity >> isContainerEntity [
	^ true
]

{ #category : #'Moose-Finder' }
FmxNGContainerEntity >> mooseFinderFunctionsIn: composite [
	<moosePresentationOrder: 40>
	composite list 
		title: 'Functions';
		titleIcon: MooseIcons famixFunctionGroup;
		display: [ self functions ];
		format: [ :each | each mooseName ];
		when: [ self functions notEmpty ]
]

{ #category : #'Moose-Finder' }
FmxNGContainerEntity >> mooseFinderTypesIn: composite [
	<moosePresentationOrder: 40>
	composite list 
		title: 'Types';
		titleIcon: MooseIcons famixClassGroup;
		display: [ self types ];
		format: [ :each | each mooseName ];
		when: [ self types notEmpty ]
]

{ #category : #accessing }
FmxNGContainerEntity >> mooseNameWithDots [
	^ self mooseName ifNotNil: [ '.' join: (self mooseName substrings: '::') ]
]

{ #category : #accessing }
FmxNGContainerEntity >> numberOfChildren [
	<MSEProperty: #numberOfChildren type: #Number>
	<MSEComment: 'Number of direct children entities in the containment tree.'>
	<derived>
	
	^ self children size
]
