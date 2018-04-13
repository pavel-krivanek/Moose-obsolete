Class {
	#name : #FmxNGTWithInvocations,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#outgoingInvocations => FMMany type: #FmxNGTInvocation opposite: #sender'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithInvocations class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithInvocations super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithInvocations >> outgoingInvocations [

	<generated>
	<MSEComment: 'Outgoing invocations sent by this behaviour.'>
	^ outgoingInvocations
]

{ #category : #accessing }
FmxNGTWithInvocations >> outgoingInvocations: anObject [

	<generated>
	outgoingInvocations value: anObject

]
