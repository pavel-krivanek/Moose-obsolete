Class {
	#name : #FmxNGTWithDereferencedInvocations,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#dereferencedInvocations => FMMany type: #FmxNGTDereferencedInvocation opposite: #referencer'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithDereferencedInvocations class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithDereferencedInvocations super: #FmxNGTWithDereferencedInvocationsGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
