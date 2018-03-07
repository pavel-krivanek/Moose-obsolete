Class {
	#name : #FmxNGTWithSourceLanguage,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#declaredSourceLanguage => FMOne type: #FmxNGTSourceLanguage opposite: #sourcedEntities'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithSourceLanguage class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithSourceLanguage super: #FmxNGTWithSourceLanguageGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
