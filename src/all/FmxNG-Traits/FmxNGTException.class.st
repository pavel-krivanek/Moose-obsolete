Class {
	#name : #FmxNGTException,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#exceptionClass => FMOne type: #FmxNGTWithExceptions opposite: #exceptions'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTException class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TException super: #FmxNGTExceptionGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
