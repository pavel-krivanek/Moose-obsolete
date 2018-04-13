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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithCaughtExceptions super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithCaughtExceptions >> caughtExceptions [

	<generated>
	^ caughtExceptions
]

{ #category : #accessing }
FmxNGTWithCaughtExceptions >> caughtExceptions: anObject [

	<generated>
	caughtExceptions value: anObject

]
