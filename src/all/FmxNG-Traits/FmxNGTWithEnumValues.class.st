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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithEnumValues super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithEnumValues >> enumValues [

	<generated>
	^ enumValues
]

{ #category : #accessing }
FmxNGTWithEnumValues >> enumValues: anObject [

	<generated>
	enumValues value: anObject

]
