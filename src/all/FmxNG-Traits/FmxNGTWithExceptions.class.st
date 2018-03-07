Class {
	#name : #FmxNGTWithExceptions,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#exceptions => FMMany type: #FmxNGTException opposite: #exceptionClass'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithExceptions class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithExceptions super: #FmxNGTWithExceptionsGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
