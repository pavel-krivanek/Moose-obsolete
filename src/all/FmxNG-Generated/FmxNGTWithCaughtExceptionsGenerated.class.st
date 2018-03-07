Class {
	#name : #FmxNGTWithCaughtExceptionsGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#caughtExceptions => FMMany type: #FmxNGTCaughtException opposite: #definingEntity'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithCaughtExceptionsGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithCaughtExceptionsGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithCaughtExceptionsGenerated >> caughtExceptions [

	^ caughtExceptions
]

{ #category : #accessing }
FmxNGTWithCaughtExceptionsGenerated >> caughtExceptions: anObject [

	caughtExceptions value: anObject

]
