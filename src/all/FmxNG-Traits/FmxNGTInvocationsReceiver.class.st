Class {
	#name : #FmxNGTInvocationsReceiver,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#receivingInvocations => FMMany type: #FmxNGTInvocation opposite: #receiver'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTInvocationsReceiver class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TInvocationsReceiver super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTInvocationsReceiver >> receivingInvocations [

	<generated>
	<MSEComment: 'List of invocations performed on this entity (considered as the receiver)'>
	^ receivingInvocations
]

{ #category : #accessing }
FmxNGTInvocationsReceiver >> receivingInvocations: anObject [

	<generated>
	receivingInvocations value: anObject

]
