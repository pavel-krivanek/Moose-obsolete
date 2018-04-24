Trait {
	#name : #FmxNGTWithTypeAliases,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithTypeAliases classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithTypeAliases super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithTypeAliases classSide >> generatedSlotNames [
	<generated>
	^ #(typeAliases)
]

{ #category : #generator }
FmxNGTWithTypeAliases classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithTypeAliases >> typeAliases [

	<generated>
	<MSEComment: 'Aliases'>
	^ typeAliases
]

{ #category : #accessing }
FmxNGTWithTypeAliases >> typeAliases: anObject [

	<generated>
	typeAliases value: anObject

]
