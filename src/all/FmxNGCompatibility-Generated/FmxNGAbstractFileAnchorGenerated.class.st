Class {
	#name : #FmxNGAbstractFileAnchorGenerated,
	#superclass : #FmxNGSourceAnchor,
	#instVars : [
		'encoding',
		'correspondingFile',
		'fileName'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGAbstractFileAnchorGenerated class >> annotation [

	<MSEClass: #AbstractFileAnchorGenerated super: #FmxNGSourceAnchor>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGAbstractFileAnchorGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGAbstractFileAnchorGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTFileAnchor}
]

{ #category : #'_fromTrait_FmxNGTFileAnchorGenerated' }
FmxNGAbstractFileAnchorGenerated >> correspondingFile [

	<MSEProperty: #correspondingFile type: #FmxNGTFile>
	<MSEComment: 'File associated to this source anchor'>
	^ correspondingFile
]

{ #category : #'_fromTrait_FmxNGTFileAnchorGenerated' }
FmxNGAbstractFileAnchorGenerated >> correspondingFile: anObject [

	correspondingFile := anObject

]

{ #category : #'_fromTrait_FmxNGTFileAnchorGenerated' }
FmxNGAbstractFileAnchorGenerated >> encoding [

	<MSEProperty: #encoding type: #String>
	<MSEComment: 'A string representing the encoding of a file'>
	^ encoding
]

{ #category : #'_fromTrait_FmxNGTFileAnchorGenerated' }
FmxNGAbstractFileAnchorGenerated >> encoding: anObject [

	encoding := anObject

]

{ #category : #'_fromTrait_FmxNGTFileAnchorGenerated' }
FmxNGAbstractFileAnchorGenerated >> fileName [

	<MSEProperty: #fileName type: #String>
	<MSEComment: 'Name of the source file'>
	^ fileName
]

{ #category : #'_fromTrait_FmxNGTFileAnchorGenerated' }
FmxNGAbstractFileAnchorGenerated >> fileName: anObject [

	fileName := anObject

]
