Class {
	#name : #FmxNGJavaSourceTextAnchor,
	#superclass : #FmxNGJavaSourceAnchor,
	#instVars : [
		'source'
	],
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaSourceTextAnchor class >> annotation [

	<generated>
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
	^ #()
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
FmxNGJavaSourceTextAnchor >> source [
	<MSEProperty: #source type: #String>
	<MSEComment: 'Actual source code of the source entity'>
	^ source
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceTextAnchor >> source: anObject [
	source := anObject
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourceTextAnchor >> sourceText [
	^ self source
]
