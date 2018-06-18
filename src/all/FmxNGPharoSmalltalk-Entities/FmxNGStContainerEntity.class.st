Class {
	#name : #FmxNGStContainerEntity,
	#superclass : #FmxNGStNamedEntity,
	#traits : 'FmxNGTWithAnnotationTypes + FmxNGTWithFunctions + FmxNGTWithTypes',
	#classTraits : 'FmxNGTWithAnnotationTypes classTrait + FmxNGTWithFunctions classTrait + FmxNGTWithTypes classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStContainerEntity class >> annotation [

	<generated>
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
	^ #(FmxNGTWithAnnotationTypes FmxNGTWithFunctions FmxNGTWithTypes)
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
