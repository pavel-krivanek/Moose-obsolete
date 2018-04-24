Trait {
	#name : #FmxNGTWithEnumValues,
	#category : #'FmxNG-Traits-Traits'
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
