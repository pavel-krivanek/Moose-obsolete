Class {
	#name : #FmxNGTWithComments,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#comments => FMMany type: #FmxNGTComment opposite: #container'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithComments class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithComments super: #FmxNGTWithCommentsGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
