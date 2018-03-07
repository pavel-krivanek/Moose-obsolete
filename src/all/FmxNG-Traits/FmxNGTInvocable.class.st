Class {
	#name : #FmxNGTInvocable,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#incomingInvocations => FMOne type: #FmxNGTInvocation opposite: #candidates'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTInvocable class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TInvocable super: #FmxNGTInvocableGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
