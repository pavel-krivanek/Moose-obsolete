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
Trait {
	#name : #FmxNGTEnumValue,
	#instVars : [
		'#parentEnum => FMOne type: #FmxNGTWithEnumValues opposite: #enumValues'
	],
	#category : #'FmxNG-Traits-EnumValue'
}

{ #category : #meta }
FmxNGTEnumValue classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TEnumValue super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTEnumValue classSide >> generatedSlotNames [
	<generated>
	'FmxNGTEnumValue class>>#generatedSlotNames'.
	^ #(parentEnum)
]

{ #category : #generator }
FmxNGTEnumValue classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTEnumValue >> belongsTo [

	^ self parentEnum
]

{ #category : #accessing }
FmxNGTEnumValue >> mooseNameOn: aStream [
	(self belongsTo isNotNil and: [ self belongsTo name isNotNil ])
		ifTrue: [ self belongsTo mooseNameOn: aStream.
			aStream << self mooseNameSeparator ].
	super mooseNameOn: aStream
]

{ #category : #accessing }
FmxNGTEnumValue >> mooseNameSeparator [
	^ '::'
]

{ #category : #accessing }
FmxNGTEnumValue >> parentEnum [

	<generated>
	<MSEComment: 'The Enum declaring this value. It offers the implementation of belongsTo'>
	<container>

	^ parentEnum
]

{ #category : #accessing }
FmxNGTEnumValue >> parentEnum: anObject [

	<generated>
	parentEnum := anObject

]

{ #category : #accessing }
FmxNGTEnumValue >> parentType [ 

	^ self parentEnum
]
