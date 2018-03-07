Class {
	#name : #FmxNGTReferenceable,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#incomingReferences => FMMany type: #FmxNGTReference opposite: #target'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTReferenceable class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TReferenceable super: #FmxNGTReferenceableGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
