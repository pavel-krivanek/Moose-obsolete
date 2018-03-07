Class {
	#name : #FmxNGTWithThrownExceptionsGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#thrownExceptions => FMMany type: #FmxNGTThrownException opposite: #definingEntity'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithThrownExceptionsGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithThrownExceptionsGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithThrownExceptionsGenerated >> thrownExceptions [

	^ thrownExceptions
]

{ #category : #accessing }
FmxNGTWithThrownExceptionsGenerated >> thrownExceptions: anObject [

	thrownExceptions value: anObject

]
