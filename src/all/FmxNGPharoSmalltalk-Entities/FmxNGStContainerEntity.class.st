Class {
	#name : #FmxNGStContainerEntity,
	#superclass : #FmxNGStNamedEntity,
	#traits : 'FmxNGTWithAnnotationTypes + FmxNGTWithClasses + FmxNGTWithTypes + TOODependencyQueries',
	#classTraits : 'FmxNGTWithAnnotationTypes classTrait + FmxNGTWithClasses classTrait + FmxNGTWithTypes classTrait + TOODependencyQueries classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStContainerEntity class >> annotation [

	<MSEClass: #ContainerEntity super: #FmxNGStNamedEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStContainerEntity class >> generatedSlotNames [
	<generated>
	'FmxNGStContainerEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStContainerEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTWithAnnotationTypes FmxNGTWithClasses FmxNGTWithTypes TOODependencyQueries)
]

{ #category : #meta }
FmxNGStContainerEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxNGStContainerEntity >> numberOfChildren [
	<MSEProperty: #numberOfChildren type: #Number>
	<MSEComment: 'Number of direct children entities in the containment tree.'>
	<derived>
	
	^ self children size
]
