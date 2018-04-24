Class {
	#name : #FmxNGContainerEntity,
	#superclass : #FmxNGNamedEntity,
	#traits : 'FmxNGTWithAnnotationTypes + FmxNGTWithFunctions + FmxNGTWithTypes',
	#classTraits : 'FmxNGTWithAnnotationTypes classTrait + FmxNGTWithFunctions classTrait + FmxNGTWithTypes classTrait',
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
