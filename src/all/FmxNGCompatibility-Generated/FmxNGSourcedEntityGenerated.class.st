Class {
	#name : #FmxNGSourcedEntityGenerated,
	#superclass : #FmxNGEntity,
	#instVars : [
		'#sourceAnchor => FMOne type: #FmxNGTSourceAnchor opposite: #element',
		'#containerFiles => FMMany type: #FmxNGTFile opposite: #entities',
		'#comments => FMMany type: #FmxNGTComment opposite: #container',
		'#declaredSourceLanguage => FMOne type: #FmxNGTSourceLanguage opposite: #sourcedEntities'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGSourcedEntityGenerated class >> annotation [

	<MSEClass: #SourcedEntityGenerated super: #FmxNGEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGSourcedEntityGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGSourcedEntityGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTWithComments. FmxNGTWithFiles. FmxNGTWithSourceAnchor. FmxNGTWithSourceLanguage}
]

{ #category : #'_fromTrait_FmxNGTWithCommentsGenerated' }
FmxNGSourcedEntityGenerated >> comments [

	<MSEComment: 'list of comments defined in the entity'>
	^ comments
]

{ #category : #'_fromTrait_FmxNGTWithCommentsGenerated' }
FmxNGSourcedEntityGenerated >> comments: anObject [

	comments value: anObject

]

{ #category : #'_fromTrait_FmxNGTWithFilesGenerated' }
FmxNGSourcedEntityGenerated >> containerFiles [

	<MSEComment: 'List of files containing the entity'>
	^ containerFiles
]

{ #category : #'_fromTrait_FmxNGTWithFilesGenerated' }
FmxNGSourcedEntityGenerated >> containerFiles: anObject [

	containerFiles value: anObject

]

{ #category : #'_fromTrait_FmxNGTWithSourceLanguageGenerated' }
FmxNGSourcedEntityGenerated >> declaredSourceLanguage [

	<MSEComment: 'The declared SourceLanguage for the source code of this entity'>
	^ declaredSourceLanguage
]

{ #category : #'_fromTrait_FmxNGTWithSourceLanguageGenerated' }
FmxNGSourcedEntityGenerated >> declaredSourceLanguage: anObject [

	declaredSourceLanguage := anObject

]

{ #category : #'_fromTrait_FmxNGTWithSourceAnchorGenerated' }
FmxNGSourcedEntityGenerated >> sourceAnchor [

	<MSEComment: 'SourceAnchor entity linking to the original source code for this entity'>
	^ sourceAnchor
]

{ #category : #'_fromTrait_FmxNGTWithSourceAnchorGenerated' }
FmxNGSourcedEntityGenerated >> sourceAnchor: anObject [

	sourceAnchor := anObject

]
