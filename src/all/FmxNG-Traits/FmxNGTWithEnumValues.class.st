Class {
	#name : #FmxNGTWithEnumValues,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#enumValues => FMMany type: #FmxNGTEnumValue opposite: #parentEnum'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithEnumValues class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithEnumValues super: #FmxNGTWithEnumValuesGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
