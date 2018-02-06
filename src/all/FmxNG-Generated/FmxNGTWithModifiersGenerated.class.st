Class {
	#name : #FmxNGTWithModifiersGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'modifiers'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithModifiersGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithModifiers super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithModifiersGenerated >> modifiers [

	<MSEProperty: #modifiers type: #String>
	<MSEComment: 'Generic container for language dependent modifiers.'>
	^ modifiers
]

{ #category : #accessing }
FmxNGTWithModifiersGenerated >> modifiers: anObject [

	modifiers := anObject

]
