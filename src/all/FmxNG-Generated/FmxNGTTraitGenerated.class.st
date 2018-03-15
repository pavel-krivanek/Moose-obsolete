"
FAMIXTrait models a trait as it can be found in Pharo or PHP.
"
Class {
	#name : #FmxNGTTraitGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#traitOwner => FMOne type: #FmxNGTWithTrait opposite: #traits',
		'#incomingTraitUsages => FMMany type: #FmxNGTTraitUsage opposite: #trait'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTTraitGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TTraitGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTTraitGenerated >> incomingTraitUsages [

	^ incomingTraitUsages
]

{ #category : #accessing }
FmxNGTTraitGenerated >> incomingTraitUsages: anObject [

	incomingTraitUsages value: anObject

]

{ #category : #accessing }
FmxNGTTraitGenerated >> traitOwner [

	^ traitOwner
]

{ #category : #accessing }
FmxNGTTraitGenerated >> traitOwner: anObject [

	traitOwner := anObject

]
