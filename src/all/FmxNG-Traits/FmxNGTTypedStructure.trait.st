Trait {
	#name : #FmxNGTTypedStructure,
	#instVars : [
		'#declaredType => FMOne type: #FmxNGTWithTypedStructures opposite: #structuresWithDeclaredType'
	],
	#category : #'FmxNG-Traits-TypedStructure'
}

{ #category : #meta }
FmxNGTTypedStructure classSide >> annotation [

	<MSEClass: #TTypedStructure super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTTypedStructure classSide >> generatedSlotNames [
	<generated>
	'FmxNGTTypedStructure class>>#generatedSlotNames'.
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
	<MSEComment: 'Type of the behavioral entity, if any'>
	^ declaredType
]

{ #category : #accessing }
FmxNGTTypedStructure >> declaredType: anObject [

	<generated>
	declaredType := anObject

]
