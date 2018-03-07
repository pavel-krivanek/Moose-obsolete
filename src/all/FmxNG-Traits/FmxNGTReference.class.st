Class {
	#name : #FmxNGTReference,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#target => FMOne type: #FmxNGTReferenceable opposite: #incomingReferences',
		'#source => FMOne type: #FmxNGTWithReferences opposite: #outgoingReferences'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTReference class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TReference super: #FmxNGTReferenceGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
