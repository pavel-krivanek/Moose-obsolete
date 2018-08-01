Class {
	#name : #FmxNGJavaContainerEntity,
	#superclass : #FmxNGJavaNamedEntity,
	#traits : 'FmxNGTWithAnnotationTypes + FmxNGTWithClasses + FmxNGTWithTypes + TDependencyQueries + TOODependencyQueries',
	#classTraits : 'FmxNGTWithAnnotationTypes classTrait + FmxNGTWithClasses classTrait + FmxNGTWithTypes classTrait + TDependencyQueries classTrait + TOODependencyQueries classTrait',
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
	^ #(FmxNGTWithAnnotationTypes FmxNGTWithClasses FmxNGTWithTypes TDependencyQueries TOODependencyQueries)
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
