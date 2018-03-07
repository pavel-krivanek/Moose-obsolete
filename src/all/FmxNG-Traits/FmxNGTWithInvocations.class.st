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

	<ignoreInTraitUsers>
	<MSEClass: #TWithInvocations super: #FmxNGTWithInvocationsGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
