Class {
	#name : #FmxNGTWithReferences,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#outgoingReferences => FMMany type: #FmxNGTReference opposite: #source'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithReferences class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithReferences super: #FmxNGTWithReferencesGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
