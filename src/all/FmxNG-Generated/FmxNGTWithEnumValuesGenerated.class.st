Class {
	#name : #FmxNGTWithEnumValuesGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#enumValues => FMMany type: #FmxNGTEnumValue opposite: #parentEnum'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithEnumValuesGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithEnumValuesGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithEnumValuesGenerated >> enumValues [

	^ enumValues
]

{ #category : #accessing }
FmxNGTWithEnumValuesGenerated >> enumValues: anObject [

	enumValues value: anObject

]
