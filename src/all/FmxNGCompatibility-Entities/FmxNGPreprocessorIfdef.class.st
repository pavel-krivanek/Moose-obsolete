Class {
	#name : #FmxNGPreprocessorIfdef,
	#superclass : #FmxNGPreprocessorStatement,
	#instVars : [
		'macro',
		'negated'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGPreprocessorIfdef class >> annotation [

	<generated>
	<MSEClass: #PreprocessorIfdef super: #FmxNGPreprocessorStatement>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGPreprocessorIfdef class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGPreprocessorIfdef class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGPreprocessorIfdef class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxNGPreprocessorIfdef >> isNegated [
	<MSEProperty: #negated type: #Boolean>
	<MSEComment: 'Whether it is an #ifdef (false) or #ifndef (true)'>
	^ negated
]

{ #category : #accessing }
FmxNGPreprocessorIfdef >> isNegated: aBoolean [
	negated := aBoolean
]

{ #category : #accessing }
FmxNGPreprocessorIfdef >> macro [
	<MSEProperty: #macro type: #String>
	<MSEComment: 'The name of the macro being tested'>
	^ macro
]

{ #category : #accessing }
FmxNGPreprocessorIfdef >> macro: anObject [
	macro := anObject
]
