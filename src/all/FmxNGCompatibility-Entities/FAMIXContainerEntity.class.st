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
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #generator }
FAMIXContainerEntity class >> generatedSlotNames [
	<generated>
	'FAMIXContainerEntity class>>#generatedSlotNames'.
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

{ #category : #testing }
FAMIXContainerEntity >> isContainerEntity [

	<generated>
	^ true
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
