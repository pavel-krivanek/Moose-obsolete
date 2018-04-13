Class {
	#name : #FmxNGTWithModifiers,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'modifiers'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithModifiers class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithModifiers super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithModifiers >> modifiers [

	<MSEProperty: #modifiers type: #String>
	<generated>
	<MSEComment: 'Generic container for language dependent modifiers.'>
	^ modifiers
]

{ #category : #accessing }
FmxNGTWithModifiers >> modifiers: anObject [

	<generated>
	modifiers := anObject

]
