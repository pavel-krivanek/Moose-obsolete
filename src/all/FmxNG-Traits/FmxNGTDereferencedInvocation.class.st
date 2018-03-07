Class {
	#name : #FmxNGTDereferencedInvocation,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#referencer => FMOne type: #FmxNGTWithDereferencedInvocations opposite: #dereferencedInvocations'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTDereferencedInvocation class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TDereferencedInvocation super: #FmxNGTDereferencedInvocationGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
