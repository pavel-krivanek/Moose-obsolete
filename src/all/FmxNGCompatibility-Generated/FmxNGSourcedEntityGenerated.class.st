Class {
	#name : #FmxNGSourcedEntityGenerated,
	#superclass : #FmxNGEntity,
	#instVars : [
		'#containerFiles => FMMany type: #FmxNGTFile opposite: #entities',
		'#sourceAnchor => FMOne type: #FmxNGTSourceAnchor opposite: #element',
		'#declaredSourceLanguage => FMOne type: #FmxNGTSourceLanguage opposite: #sourcedEntities',
		'#comments => FMMany type: #FmxNGTComment opposite: #container'
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
