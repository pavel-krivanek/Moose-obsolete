Class {
	#name : #FmxNGJavaAnnotationTypeAttribute,
	#superclass : #FmxNGJavaAttribute,
	#traits : 'FmxNGTAnnotationTypeAttribute + FmxNGTTypedAnnotationInstanceAttribute',
	#classTraits : 'FmxNGTAnnotationTypeAttribute classTrait + FmxNGTTypedAnnotationInstanceAttribute classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaAnnotationTypeAttribute class >> annotation [

	<generated>
	<MSEClass: #AnnotationTypeAttribute super: #FmxNGJavaAttribute>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaAnnotationTypeAttribute class >> generatedSlotNames [
	<generated>
	'FmxNGJavaAnnotationTypeAttribute class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaAnnotationTypeAttribute class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAnnotationTypeAttribute FmxNGTTypedAnnotationInstanceAttribute)
]

{ #category : #meta }
FmxNGJavaAnnotationTypeAttribute class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaAnnotationTypeAttribute >> parentAnnotationType [
	<MSEProperty: #parentAnnotationType type: #FmxNGJavaAnnotationType> 
	<derived> 
	<MSEComment: 'This is an alias pointing to the AnnotationType that defines this attribute'>

	^ self parentType
]

{ #category : #'as yet unclassified' }
FmxNGJavaAnnotationTypeAttribute >> parentAnnotationType: anAnnotationType [
	self parentType: anAnnotationType
]
