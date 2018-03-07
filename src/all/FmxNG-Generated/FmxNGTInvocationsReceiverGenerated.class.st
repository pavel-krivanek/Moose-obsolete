Class {
	#name : #FmxNGTInvocationsReceiverGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#receivingInvocations => FMMany type: #FmxNGTInvocation opposite: #receiver'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTInvocationsReceiverGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TInvocationsReceiverGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTInvocationsReceiverGenerated >> receivingInvocations [

	<MSEComment: 'List of invocations performed on this entity (considered as the receiver)'>
	^ receivingInvocations
]

{ #category : #accessing }
FmxNGTInvocationsReceiverGenerated >> receivingInvocations: anObject [

	receivingInvocations value: anObject

]
