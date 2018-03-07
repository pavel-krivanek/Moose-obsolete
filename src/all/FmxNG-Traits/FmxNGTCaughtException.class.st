Class {
	#name : #FmxNGTCaughtException,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#definingEntity => FMOne type: #FmxNGTWithCaughtExceptions opposite: #caughtExceptions'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTCaughtException class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TCaughtException super: #FmxNGTCaughtExceptionGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
