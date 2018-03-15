Class {
	#name : #FmxNGTWithTraitGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#traits => FMMany type: #FmxNGTTrait opposite: #traitOwner'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithTraitGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithTraitGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithTraitGenerated >> traits [

	^ traits
]

{ #category : #accessing }
FmxNGTWithTraitGenerated >> traits: anObject [

	traits value: anObject

]
