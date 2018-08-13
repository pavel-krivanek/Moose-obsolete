Class {
	#name : #FmxNGJavaSourceTextAnchor,
	#superclass : #FmxNGJavaSourceAnchor,
	#traits : 'FmxNGTWithImmediateSource',
	#classTraits : 'FmxNGTWithImmediateSource classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaSourceTextAnchor class >> annotation [

	<MSEClass: #SourceTextAnchor super: #FmxNGJavaSourceAnchor>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaSourceTextAnchor class >> generatedSlotNames [
	<generated>
	'FmxNGJavaSourceTextAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaSourceTextAnchor class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTWithImmediateSource)
]

{ #category : #meta }
FmxNGJavaSourceTextAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceTextAnchor >> containerFiles [
	^ {}
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceTextAnchor >> lineCount [
	^ self sourceText ifNotNil: #lineCount ifNil: [ self notExistentMetricValue ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceTextAnchor >> sourceText [
	^ self source
]
