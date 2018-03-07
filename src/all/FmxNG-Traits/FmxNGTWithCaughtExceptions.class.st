Class {
	#name : #FmxNGTWithCaughtExceptions,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#caughtExceptions => FMMany type: #FmxNGTCaughtException opposite: #definingEntity'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithCaughtExceptions class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithCaughtExceptions super: #FmxNGTWithCaughtExceptionsGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
