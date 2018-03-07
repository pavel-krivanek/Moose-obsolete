Class {
	#name : #FmxNGTFileAnchor,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'encoding',
		'correspondingFile',
		'fileName'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTFileAnchor class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TFileAnchor super: #FmxNGTFileAnchorGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTFileAnchor >> encoding [
	<MSEProperty: #encoding type: #String>
	<MSEComment: 'A string representing the encoding of a file'>
	^ encoding ifNil: [ encoding := self detectEncoding ]
]
