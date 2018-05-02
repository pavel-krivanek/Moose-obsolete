Trait {
	#name : #FmxNGTWithAttributes,
	#instVars : [
		'#attributes => FMMany type: #FmxNGTAttribute opposite: #parentType'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithAttributes classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithAttributes super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithAttributes classSide >> generatedSlotNames [
	<generated>
	^ #(attributes)
]

{ #category : #generator }
FmxNGTWithAttributes classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithAttributes >> attributes [

	<generated>
	<MSEComment: 'List of attributes declared by this type.'>
	^ attributes
]

{ #category : #accessing }
FmxNGTWithAttributes >> attributes: anObject [

	<generated>
	attributes value: anObject

]
