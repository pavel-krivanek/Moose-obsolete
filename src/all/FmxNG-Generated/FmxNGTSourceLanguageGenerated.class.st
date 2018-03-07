"
FAMIXSourceLanguage represents the programming language in which an entity is written. It is used for dispatching entity actions for specific languages. For example, formatting a source text will be performed according to the language. A project may have multiple languages. 

A source language has a name and entities that are written in this language. 
One can create a default source language for a project by not associating any entities to it. In this case, all entities that do not have specific source langauge, belong to the default source language. One can attach entities to a sourceLanguage using addSourceEntity:.
"
Class {
	#name : #FmxNGTSourceLanguageGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#sourcedEntities => FMMany type: #FmxNGTWithSourceLanguage opposite: #declaredSourceLanguage'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTSourceLanguageGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TSourceLanguageGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTSourceLanguageGenerated >> sourcedEntities [

	<MSEComment: 'References to the entities saying explicitly that are written in this language.'>
	^ sourcedEntities
]

{ #category : #accessing }
FmxNGTSourceLanguageGenerated >> sourcedEntities: anObject [

	sourcedEntities value: anObject

]
