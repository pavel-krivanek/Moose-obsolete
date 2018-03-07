Class {
	#name : #FmxNGTHeader,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#headerOwner => FMOne type: #FmxNGTWithHeader opposite: #header'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTHeader class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #THeader super: #FmxNGTHeaderGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
