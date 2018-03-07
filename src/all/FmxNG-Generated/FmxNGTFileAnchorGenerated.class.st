"
This offers a source anchor that connects a sourced entity to a file through a relative path stored in the fileName. In addition, the source can be further specified with a startLine and an endLine number in the file.
"
Class {
	#name : #FmxNGTFileAnchorGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'encoding',
		'correspondingFile',
		'fileName'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTFileAnchorGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TFileAnchorGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTFileAnchorGenerated >> correspondingFile [

	<MSEProperty: #correspondingFile type: #FmxNGTFile>
	<MSEComment: 'File associated to this source anchor'>
	^ correspondingFile
]

{ #category : #accessing }
FmxNGTFileAnchorGenerated >> correspondingFile: anObject [

	correspondingFile := anObject

]

{ #category : #accessing }
FmxNGTFileAnchorGenerated >> encoding [

	<MSEProperty: #encoding type: #String>
	<MSEComment: 'A string representing the encoding of a file'>
	^ encoding
]

{ #category : #accessing }
FmxNGTFileAnchorGenerated >> encoding: anObject [

	encoding := anObject

]

{ #category : #accessing }
FmxNGTFileAnchorGenerated >> fileName [

	<MSEProperty: #fileName type: #String>
	<MSEComment: 'Name of the source file'>
	^ fileName
]

{ #category : #accessing }
FmxNGTFileAnchorGenerated >> fileName: anObject [

	fileName := anObject

]
