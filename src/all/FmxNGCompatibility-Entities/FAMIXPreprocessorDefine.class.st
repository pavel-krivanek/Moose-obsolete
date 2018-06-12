Class {
	#name : #FAMIXPreprocessorDefine,
	#superclass : #FAMIXPreprocessorStatement,
	#traits : 'FmxNGTPreprocessorIfdef',
	#classTraits : 'FmxNGTPreprocessorIfdef classTrait',
	#instVars : [
		'macro'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXPreprocessorDefine class >> annotation [

	<generated>
	<MSEClass: #PreprocessorDefine super: #FAMIXPreprocessorStatement>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #generator }
FAMIXPreprocessorDefine class >> generatedSlotNames [
	<generated>
	'FAMIXPreprocessorDefine class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FAMIXPreprocessorDefine class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTPreprocessorIfdef)
]

{ #category : #meta }
FAMIXPreprocessorDefine class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FAMIXPreprocessorDefine >> macro [
	<MSEProperty: #macro type: #String>
	<MSEComment: 'The name of the macro being defined'>
	^ macro
]

{ #category : #accessing }
FAMIXPreprocessorDefine >> macro: anObject [
	macro := anObject
]
