Class {
	#name : #FmxNGTWithTrait,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#traits => FMMany type: #FmxNGTTrait opposite: #users'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithTrait class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithTrait super: #FmxNGTWithTraitGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
