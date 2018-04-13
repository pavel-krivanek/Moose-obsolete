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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithSourceLanguage super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithSourceLanguage >> declaredSourceLanguage [

	<generated>
	<MSEComment: 'The declared SourceLanguage for the source code of this entity'>
	^ declaredSourceLanguage
]

{ #category : #accessing }
FmxNGTWithSourceLanguage >> declaredSourceLanguage: anObject [

	<generated>
	declaredSourceLanguage := anObject

]
