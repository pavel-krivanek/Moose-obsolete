Class {
	#name : #FmxNGTAttribute,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentType => FMOne type: #FmxNGTWithAttributes opposite: #attributes'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTAttribute class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TAttribute super: #FmxNGTAttributeGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
