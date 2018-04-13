Class {
	#name : #FmxNGTWithTrait,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#traits => FMMany type: #FmxNGTTrait opposite: #traitOwner'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithTrait class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithTrait super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithTrait >> traits [

	<generated>
	^ traits
]

{ #category : #accessing }
FmxNGTWithTrait >> traits: anObject [

	<generated>
	traits value: anObject

]
