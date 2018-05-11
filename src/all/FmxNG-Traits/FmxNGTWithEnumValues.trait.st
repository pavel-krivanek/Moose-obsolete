Trait {
	#name : #FmxNGTWithEnumValues,
	#instVars : [
		'#enumValues => FMMany type: #FmxNGTEnumValue opposite: #parentEnum'
	],
	#category : #'FmxNG-Traits-EnumValue'
}

{ #category : #meta }
FmxNGTWithEnumValues classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithEnumValues super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithEnumValues classSide >> generatedSlotNames [
	<generated>
	^ #(enumValues)
]

{ #category : #generator }
FmxNGTWithEnumValues classSide >> generatedTraitNames [
	<generated>
	^ #()
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
