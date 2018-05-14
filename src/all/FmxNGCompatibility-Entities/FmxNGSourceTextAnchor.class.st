Class {
	#name : #FmxNGSourceTextAnchor,
	#superclass : #FmxNGSourceAnchor,
	#instVars : [
		'source'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGSourceTextAnchor class >> annotation [

	<generated>
	<MSEClass: #SourceTextAnchor super: #FmxNGSourceAnchor>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGSourceTextAnchor class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGSourceTextAnchor class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGSourceTextAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxNGSourceTextAnchor >> containerFiles [
	^ {}
]

{ #category : #accessing }
FmxNGSourceTextAnchor >> lineCount [
	^ self sourceText ifNotNil: #lineCount ifNil: [ self notExistentMetricValue ]
]

{ #category : #accessing }
FmxNGSourceTextAnchor >> name [
	"The name of the language that is not modeled explicitly"
	
	<MSEProperty: #name type: #String> <derived>
	<MSEComment: 'The name of the language that is not modeled explicitly.'>
	
	^ (self class name removePrefix: 'FmxNG') removeSuffix: 'SourceLanguage'
]

{ #category : #accessing }
FmxNGSourceTextAnchor >> source [
	<MSEProperty: #source type: #String>
	<MSEComment: 'Actual source code of the source entity'>
	^ source
]

{ #category : #accessing }
FmxNGSourceTextAnchor >> source: anObject [
	source := anObject
]

{ #category : #accessing }
FmxNGSourceTextAnchor >> sourceText [
	^ self source
]
