Class {
	#name : #FmxNGTInvocable,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#incomingInvocations => FMMany type: #FmxNGTInvocation opposite: #candidates'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTInvocable class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TInvocable super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTInvocable >> incomingInvocations [

	<generated>
	^ incomingInvocations
]

{ #category : #accessing }
FmxNGTInvocable >> incomingInvocations: anObject [

	<generated>
	incomingInvocations value: anObject

]
