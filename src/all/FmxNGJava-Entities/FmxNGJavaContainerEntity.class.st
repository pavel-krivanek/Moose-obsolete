Class {
	#name : #FmxNGJavaContainerEntity,
	#superclass : #FmxNGJavaNamedEntity,
	#traits : 'FmxNGTWithAnnotationTypes + FmxNGTWithTypes + TOODependencyQueries',
	#classTraits : 'FmxNGTWithAnnotationTypes classTrait + FmxNGTWithTypes classTrait + TOODependencyQueries classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaContainerEntity class >> annotation [

	<MSEClass: #ContainerEntity super: #FmxNGJavaNamedEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaContainerEntity class >> generatedSlotNames [
	<generated>
	'FmxNGJavaContainerEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaContainerEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTWithAnnotationTypes FmxNGTWithTypes TDependencyQueries TOODependencyQueries)
]

{ #category : #meta }
FmxNGJavaContainerEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaContainerEntity >> accept: aVisitor [

	aVisitor visitContainerEntity: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaContainerEntity >> addClass: aClass [
	
	types add: aClass
]

{ #category : #accessing }
FmxNGJavaContainerEntity >> classes [
	"Classes are usually seen as types from the point of view of a Container. However, there may other types (e.g. aspects) which we dont want to see as classes and are rejected by this method."
	<navigation: 'Classes'>

	^ self privateState 
				cacheAt: #classes 
				ifAbsentPut: [self types select: [:type| type isClass ]]
]

{ #category : #'as yet unclassified' }
FmxNGJavaContainerEntity >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	anEntity types do: [:t|
		self addType: (aVisitor visit: t) ].

	
]

{ #category : #testing }
FmxNGJavaContainerEntity >> isContainerEntity [

	<generated>
	^ true
]

{ #category : #'as yet unclassified' }
FmxNGJavaContainerEntity >> mooseNameWithDots [
	^ self mooseName ifNotNil: [ '.' join: (self mooseName substrings: '::') ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaContainerEntity >> numberOfChildren [
	<MSEProperty: #numberOfChildren type: #Number>
	<MSEComment: 'Number of direct children entities in the containment tree.'>
	<derived>
	
	^ self children size
]
