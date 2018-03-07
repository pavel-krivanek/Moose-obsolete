Class {
	#name : #FmxNGTWithAccesses,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#accesses => FMMany type: #FmxNGTAccess opposite: #accessor'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithAccesses class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithAccesses super: #FmxNGTWithAccessesGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
