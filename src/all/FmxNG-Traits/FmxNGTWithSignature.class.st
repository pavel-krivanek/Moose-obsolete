Class {
	#name : #FmxNGTWithSignature,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'signature'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithSignature class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithSignature super: #FmxNGTWithSignatureGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
