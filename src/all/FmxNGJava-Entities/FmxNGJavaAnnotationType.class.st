Class {
	#name : #FmxNGJavaAnnotationType,
	#superclass : #FmxNGJavaType,
	#traits : 'FmxNGTAnnotationType',
	#classTraits : 'FmxNGTAnnotationType classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaAnnotationType class >> annotation [

	<generated>
	<MSEClass: #AnnotationType super: #FmxNGJavaType>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaAnnotationType class >> generatedSlotNames [
	<generated>
	'FmxNGJavaAnnotationType class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaAnnotationType class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAnnotationType)
]

{ #category : #meta }
FmxNGJavaAnnotationType class >> requirements [

	<generated>
	^ { FmxNGJavaContainerEntity }
]
