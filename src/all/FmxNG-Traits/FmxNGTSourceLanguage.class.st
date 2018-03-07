Class {
	#name : #FmxNGTSourceLanguage,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#sourcedEntities => FMMany type: #FmxNGTWithSourceLanguage opposite: #declaredSourceLanguage'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTSourceLanguage class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TSourceLanguage super: #FmxNGTSourceLanguageGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
