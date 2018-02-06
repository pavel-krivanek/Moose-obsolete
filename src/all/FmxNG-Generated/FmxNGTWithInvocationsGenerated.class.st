Class {
	#name : #FmxNGTWithInvocationsGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#outgoingInvocations => FMMany type: #FmxNGTInvocation opposite: #sender'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithInvocationsGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithInvocations super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithInvocationsGenerated >> outgoingInvocations [

	<MSEComment: 'Outgoing invocations sent by this behaviour.'>
	^ outgoingInvocations
]

{ #category : #accessing }
FmxNGTWithInvocationsGenerated >> outgoingInvocations: anObject [

	outgoingInvocations value: anObject

]
