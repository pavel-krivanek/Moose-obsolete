Class {
	#name : #FmxNGStContainerEntity,
	#superclass : #FmxNGStNamedEntity,
	#traits : 'FmxNGTWithAnnotationTypes + FmxNGTWithTypes + TOODependencyQueries',
	#classTraits : 'FmxNGTWithAnnotationTypes classTrait + FmxNGTWithTypes classTrait + TOODependencyQueries classTrait',
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
	^ #(FmxNGTWithAnnotationTypes FmxNGTWithTypes TOODependencyQueries)
]

{ #category : #meta }
FmxNGStContainerEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxNGStContainerEntity >> classes [
	"Classes are usually seen as types from the point of view of a Container. However, there may other types (e.g. aspects) which we dont want to see as classes and are rejected by this method."
	<navigation: 'Classes'>

	^ self privateState 
				cacheAt: #classes 
				ifAbsentPut: [self types select: [:type| type isClass ]]
]

{ #category : #accessing }
FmxNGStContainerEntity >> numberOfChildren [
	<MSEProperty: #numberOfChildren type: #Number>
	<MSEComment: 'Number of direct children entities in the containment tree.'>
	<derived>
	
	^ self children size
]
