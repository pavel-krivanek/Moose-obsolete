Class {
	#name : #FmxNGJavaContainerEntity,
	#superclass : #FmxNGJavaNamedEntity,
	#traits : 'FmxNGTWithAnnotationTypes + FmxNGTWithTypes',
	#classTraits : 'FmxNGTWithAnnotationTypes classTrait + FmxNGTWithTypes classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaContainerEntity class >> annotation [

	<generated>
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
	^ #(FmxNGTWithAnnotationTypes FmxNGTWithTypes)
]

{ #category : #meta }
FmxNGJavaContainerEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxNGJavaContainerEntity >> classes [
	"Classes are usually seen as types from the point of view of a Container. However, there may other types (e.g. aspects) which we dont want to see as classes and are rejected by this method."
	<navigation: 'Classes'>

	^ self privateState 
				cacheAt: #classes 
				ifAbsentPut: [self types select: [:type| type isClass ]]
]
