Class {
	#name : #FmxNGTWithExceptionsGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#exceptions => FMMany type: #FmxNGTException opposite: #exceptionClass'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithExceptionsGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithExceptions super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithExceptionsGenerated >> exceptions [

	<MSEComment: 'Exceptions which class is myself.'>
	^ exceptions
]

{ #category : #accessing }
FmxNGTWithExceptionsGenerated >> exceptions: anObject [

	exceptions value: anObject

]
