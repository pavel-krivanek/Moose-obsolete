"
This offers a source anchor that connects a sourced entity to a file through a relative path stored in the fileName. In addition, the source can be further specified with a startLine and an endLine number in the file.
"
Class {
	#name : #FmxNGTFileAnchor,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'correspondingFile',
		'encoding',
		'fileName'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTFileAnchor class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TFileAnchor super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTFileAnchor >> correspondingFile [

	<MSEProperty: #correspondingFile type: #FmxNGTFile>
	<generated>
	<MSEComment: 'File associated to this source anchor'>
	^ correspondingFile
]

{ #category : #accessing }
FmxNGTFileAnchor >> correspondingFile: anObject [

	<generated>
	correspondingFile := anObject

]

{ #category : #accessing }
FmxNGTFileAnchor >> encoding [

	<MSEProperty: #encoding type: #String>
	<generated>
	<MSEComment: 'A string representing the encoding of a file'>
	^ encoding
]

{ #category : #accessing }
FmxNGTFileAnchor >> encoding: anObject [

	<generated>
	encoding := anObject

]

{ #category : #accessing }
FmxNGTFileAnchor >> fileName [

	<MSEProperty: #fileName type: #String>
	<generated>
	<MSEComment: 'Name of the source file'>
	^ fileName
]

{ #category : #accessing }
FmxNGTFileAnchor >> fileName: anObject [

	<generated>
	fileName := anObject

]
