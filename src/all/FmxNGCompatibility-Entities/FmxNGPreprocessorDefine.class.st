Class {
	#name : #FmxNGPreprocessorDefine,
	#superclass : #FmxNGPreprocessorStatement,
	#traits : 'FmxNGTPreprocessorIfdef',
	#classTraits : 'FmxNGTPreprocessorIfdef classTrait',
	#instVars : [
		'macro'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGPreprocessorDefine class >> annotation [

	<generated>
	<MSEClass: #PreprocessorDefine super: #FmxNGPreprocessorStatement>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGPreprocessorDefine class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGPreprocessorDefine class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTPreprocessorIfdef)
]

{ #category : #meta }
FmxNGPreprocessorDefine class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxNGPreprocessorDefine >> macro [
	<MSEProperty: #macro type: #String>
	<MSEComment: 'The name of the macro being defined'>
	^ macro
]

{ #category : #accessing }
FmxNGPreprocessorDefine >> macro: anObject [
	macro := anObject
]
