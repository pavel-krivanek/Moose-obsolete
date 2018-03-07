Class {
	#name : #FmxNGTTrait,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#users => FMOne type: #FmxNGTWithTrait opposite: #traits'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTTrait class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TTrait super: #FmxNGTTraitGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
