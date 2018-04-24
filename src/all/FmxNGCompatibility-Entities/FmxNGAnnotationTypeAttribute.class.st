Class {
	#name : #FmxNGAnnotationTypeAttribute,
	#superclass : #FmxNGAttribute,
	#traits : 'FmxNGTAnnotationTypeAttribute + FmxNGTTypedAnnotationInstanceAttribute',
	#classTraits : 'FmxNGTAnnotationTypeAttribute classTrait + FmxNGTTypedAnnotationInstanceAttribute classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGAnnotationTypeAttribute class >> annotation [

	<generated>
	<MSEClass: #AnnotationTypeAttribute super: #FmxNGAttribute>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGAnnotationTypeAttribute class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGAnnotationTypeAttribute class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAnnotationTypeAttribute FmxNGTTypedAnnotationInstanceAttribute)
]

{ #category : #meta }
FmxNGAnnotationTypeAttribute class >> requirements [

	<generated>
	^ {  }
]
