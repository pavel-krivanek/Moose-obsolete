Class {
	#name : #FAMIXPreprocessorIfdef,
	#superclass : #FAMIXPreprocessorStatement,
	#instVars : [
		'macro',
		'negated'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXPreprocessorIfdef class >> annotation [

	<generated>
	<MSEClass: #PreprocessorIfdef super: #FAMIXPreprocessorStatement>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FAMIXPreprocessorIfdef class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXPreprocessorIfdef class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FAMIXPreprocessorIfdef class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FAMIXPreprocessorIfdef >> isNegated [
	<MSEProperty: #negated type: #Boolean>
	<MSEComment: 'Whether it is an #ifdef (false) or #ifndef (true)'>
	^ negated
]

{ #category : #accessing }
FAMIXPreprocessorIfdef >> isNegated: aBoolean [
	negated := aBoolean
]

{ #category : #accessing }
FAMIXPreprocessorIfdef >> macro [
	<MSEProperty: #macro type: #String>
	<MSEComment: 'The name of the macro being tested'>
	^ macro
]

{ #category : #accessing }
FAMIXPreprocessorIfdef >> macro: anObject [
	macro := anObject
]
