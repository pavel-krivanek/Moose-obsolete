Class {
	#name : #FmxNGSourceLanguageGenerated,
	#superclass : #FmxNGEntity,
	#instVars : [
		'#sourcedEntities => FMMany type: #FmxNGTWithSourceLanguage opposite: #declaredSourceLanguage'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGSourceLanguageGenerated class >> annotation [

	<MSEClass: #SourceLanguageGenerated super: #FmxNGEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGSourceLanguageGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGSourceLanguageGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTSourceLanguage}
]

{ #category : #'_fromTrait_FmxNGTSourceLanguageGenerated' }
FmxNGSourceLanguageGenerated >> sourcedEntities [

	<MSEComment: 'References to the entities saying explicitly that are written in this language.'>
	^ sourcedEntities
]

{ #category : #'_fromTrait_FmxNGTSourceLanguageGenerated' }
FmxNGSourceLanguageGenerated >> sourcedEntities: anObject [

	sourcedEntities value: anObject

]
