Trait {
	#name : #FmxNGTWithTypedStructures,
	#instVars : [
		'#structuresWithDeclaredType => FMMany type: #FmxNGTTypedStructure opposite: #declaredType'
	],
	#category : #'FmxNG-Traits-TypedStructure'
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
	<MSEComment: 'Structural entities that have this type as declaredType'>
	^ structuresWithDeclaredType
]

{ #category : #accessing }
FmxNGTWithTypedStructures >> structuresWithDeclaredType: anObject [

	<generated>
	structuresWithDeclaredType value: anObject

]
