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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithThrownExceptions super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithThrownExceptions >> thrownExceptions [

	<generated>
	^ thrownExceptions
]

{ #category : #accessing }
FmxNGTWithThrownExceptions >> thrownExceptions: anObject [

	<generated>
	thrownExceptions value: anObject

]
