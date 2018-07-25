Class {
	#name : #FmxNGStAnnotationType,
	#superclass : #FmxNGStType,
	#traits : 'FmxNGTAnnotationType',
	#classTraits : 'FmxNGTAnnotationType classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStAnnotationType class >> annotation [

	<MSEClass: #AnnotationType super: #FmxNGStType>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStAnnotationType class >> generatedSlotNames [
	<generated>
	'FmxNGStAnnotationType class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStAnnotationType class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAnnotationType)
]

{ #category : #meta }
FmxNGStAnnotationType class >> requirements [

	<generated>
	^ { FmxNGStContainerEntity }
]
