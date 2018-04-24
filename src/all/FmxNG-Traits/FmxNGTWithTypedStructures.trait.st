Trait {
	#name : #FmxNGTWithTypedStructures,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithTypedStructures classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithTypedStructures super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithTypedStructures classSide >> generatedSlotNames [
	<generated>
	^ #(structuresWithDeclaredType)
]

{ #category : #generator }
FmxNGTWithTypedStructures classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithTypedStructures >> structuresWithDeclaredType [

	<generated>
	^ structuresWithDeclaredType
]

{ #category : #accessing }
FmxNGTWithTypedStructures >> structuresWithDeclaredType: anObject [

	<generated>
	structuresWithDeclaredType value: anObject

]
