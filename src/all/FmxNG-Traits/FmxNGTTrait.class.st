"
FAMIXTrait models a trait as it can be found in Pharo or PHP.
"
Class {
	#name : #FmxNGTTrait,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#incomingTraitUsages => FMMany type: #FmxNGTTraitUsage opposite: #trait',
		'#traitOwner => FMOne type: #FmxNGTWithTrait opposite: #traits'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTTrait class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TTrait super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTTrait >> incomingTraitUsages [

	<generated>
	^ incomingTraitUsages
]

{ #category : #accessing }
FmxNGTTrait >> incomingTraitUsages: anObject [

	<generated>
	incomingTraitUsages value: anObject

]

{ #category : #accessing }
FmxNGTTrait >> traitOwner [

	<generated>
	^ traitOwner
]

{ #category : #accessing }
FmxNGTTrait >> traitOwner: anObject [

	<generated>
	traitOwner := anObject

]
