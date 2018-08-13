Class {
	#name : #FAMIXContainerEntity,
	#superclass : #FAMIXNamedEntity,
	#traits : 'FmxNGTWithAnnotationTypes + FmxNGTWithClasses + FmxNGTWithFunctions + FmxNGTWithTypes + TOODependencyQueries',
	#classTraits : 'FmxNGTWithAnnotationTypes classTrait + FmxNGTWithClasses classTrait + FmxNGTWithFunctions classTrait + FmxNGTWithTypes classTrait + TOODependencyQueries classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXContainerEntity class >> annotation [

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
	^ #(FmxNGTWithAnnotationTypes FmxNGTWithClasses FmxNGTWithFunctions FmxNGTWithTypes TOODependencyQueries)
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
