Class {
	#name : #FmxNGTType,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#typeContainer => FMOne type: #FmxNGTWithTypes opposite: #types'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTType class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TType super: #FmxNGTTypeGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
