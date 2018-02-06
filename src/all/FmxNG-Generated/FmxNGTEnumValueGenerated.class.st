"
It models the values defined in an FAMIXEnum. These are attributes of enums with default values.

For example, the following Java code defines an Enum with seven EnumValues.

public enum Day {
    SUNDAY, MONDAY, TUESDAY, WEDNESDAY, 
    THURSDAY, FRIDAY, SATURDAY 
}

Instance Variables:
	parentEnum	<(MultivalueLink of: FAMIXEnum)>
"
Class {
	#name : #FmxNGTEnumValueGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentEnum => FMOne type: #FmxNGTWithEnumValues opposite: #enumValues'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTEnumValueGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TEnumValue super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTEnumValueGenerated >> parentEnum [

	<MSEComment: 'The Enum declaring this value. It offers the implementation of belongsTo'>
	<container>

	^ parentEnum
]

{ #category : #accessing }
FmxNGTEnumValueGenerated >> parentEnum: anObject [

	parentEnum := anObject

]
