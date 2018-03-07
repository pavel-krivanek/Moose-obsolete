Class {
	#name : #FmxNGTWithThrownExceptions,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#thrownExceptions => FMMany type: #FmxNGTThrownException opposite: #definingEntity'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithThrownExceptions class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithThrownExceptions super: #FmxNGTWithThrownExceptionsGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
