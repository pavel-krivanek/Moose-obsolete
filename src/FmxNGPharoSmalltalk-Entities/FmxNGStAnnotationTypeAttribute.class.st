Class {
	#name : #FmxNGStAnnotationTypeAttribute,
	#superclass : #FmxNGStAttribute,
	#traits : 'FmxNGTAnnotationTypeAttribute + FmxNGTTypedAnnotationInstanceAttribute',
	#classTraits : 'FmxNGTAnnotationTypeAttribute classTrait + FmxNGTTypedAnnotationInstanceAttribute classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStAnnotationTypeAttribute class >> annotation [

	<MSEClass: #AnnotationTypeAttribute super: #FmxNGStAttribute>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStAnnotationTypeAttribute class >> generatedSlotNames [
	<generated>
	'FmxNGStAnnotationTypeAttribute class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStAnnotationTypeAttribute class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAnnotationTypeAttribute FmxNGTTypedAnnotationInstanceAttribute)
]

{ #category : #meta }
FmxNGStAnnotationTypeAttribute class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxNGStAnnotationTypeAttribute >> parentAnnotationType [
	<MSEProperty: #parentAnnotationType type: #FmxNGStAnnotationType> <derived> 
	<MSEComment: 'This is an alias pointing to the AnnotationType that defines this attribute'>

	^ self parentType
]

{ #category : #accessing }
FmxNGStAnnotationTypeAttribute >> parentAnnotationType: anAnnotationType [
	self parentType: anAnnotationType
]
