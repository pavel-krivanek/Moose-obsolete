"
FAMIXTrait models a trait as it can be found in Pharo or PHP.
"
Class {
	#name : #FmxNGTTraitGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#users => FMOne type: #FmxNGTWithTrait opposite: #traits'
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
FmxNGTTraitGenerated >> users [

	^ users
]

{ #category : #accessing }
FmxNGTTraitGenerated >> users: anObject [

	users := anObject

]
