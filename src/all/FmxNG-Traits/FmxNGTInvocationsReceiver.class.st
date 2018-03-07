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

	<ignoreInTraitUsers>
	<MSEClass: #TInvocationsReceiver super: #FmxNGTInvocationsReceiverGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
