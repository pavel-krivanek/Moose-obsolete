Class {
	#name : #FmxNGTThrownException,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#definingEntity => FMOne type: #FmxNGTWithThrownExceptions opposite: #thrownExceptions'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTThrownException class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TThrownException super: #FmxNGTThrownExceptionGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
