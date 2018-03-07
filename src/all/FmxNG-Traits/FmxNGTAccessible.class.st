Class {
	#name : #FmxNGTAccessible,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#incomingAccesses => FMMany type: #FmxNGTAccess opposite: #variable'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTAccessible class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TAccessible super: #FmxNGTAccessibleGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
