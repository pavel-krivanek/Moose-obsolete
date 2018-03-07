Class {
	#name : #FmxNGTInvocation,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#sender => FMOne type: #FmxNGTWithInvocations opposite: #outgoingInvocations',
		'#candidates => FMMany type: #FmxNGTInvocable opposite: #incomingInvocations',
		'#receiver => FMOne type: #FmxNGTInvocationsReceiver opposite: #receivingInvocations'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTInvocation class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TInvocation super: #FmxNGTInvocationGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
