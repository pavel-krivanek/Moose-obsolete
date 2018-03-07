Class {
	#name : #FmxNGTEnumValue,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentEnum => FMOne type: #FmxNGTWithEnumValues opposite: #enumValues'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTEnumValue class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TEnumValue super: #FmxNGTEnumValueGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
