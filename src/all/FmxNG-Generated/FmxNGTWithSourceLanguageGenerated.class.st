Class {
	#name : #FmxNGTWithSourceLanguageGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#declaredSourceLanguage => FMOne type: #FmxNGTSourceLanguage opposite: #sourcedEntities'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithSourceLanguageGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithSourceLanguage super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithSourceLanguageGenerated >> declaredSourceLanguage [

	<MSEComment: 'The declared SourceLanguage for the source code of this entity'>
	^ declaredSourceLanguage
]

{ #category : #accessing }
FmxNGTWithSourceLanguageGenerated >> declaredSourceLanguage: anObject [

	declaredSourceLanguage := anObject

]
