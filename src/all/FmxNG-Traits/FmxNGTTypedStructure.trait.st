Trait {
	#name : #FmxNGTTypedStructure,
	#instVars : [
		'#declaredType => FMOne type: #FmxNGTWithTypedStructures opposite: #structuresWithDeclaredType'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTTypedStructure classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TTypedStructure super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTTypedStructure classSide >> generatedSlotNames [
	<generated>
	^ #(declaredType)
]

{ #category : #generator }
FmxNGTTypedStructure classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTTypedStructure >> declaredType [

	<generated>
	^ declaredType
]

{ #category : #accessing }
FmxNGTTypedStructure >> declaredType: anObject [

	<generated>
	declaredType := anObject

]
