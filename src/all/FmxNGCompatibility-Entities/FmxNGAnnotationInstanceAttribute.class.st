Class {
	#name : #FmxNGAnnotationInstanceAttribute,
	#superclass : #FmxNGSourcedEntity,
	#traits : 'FmxNGTAnnotationInstanceAttribute + FmxNGTTypedAnnotationInstanceAttribute',
	#classTraits : 'FmxNGTAnnotationInstanceAttribute classTrait + FmxNGTTypedAnnotationInstanceAttribute classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGAnnotationInstanceAttribute class >> annotation [

	<generated>
	<MSEClass: #AnnotationInstanceAttribute super: #FmxNGSourcedEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGAnnotationInstanceAttribute class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGAnnotationInstanceAttribute class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAnnotationInstanceAttribute FmxNGTTypedAnnotationInstanceAttribute)
]

{ #category : #meta }
FmxNGAnnotationInstanceAttribute class >> requirements [

	<generated>
	^ {  }
]
