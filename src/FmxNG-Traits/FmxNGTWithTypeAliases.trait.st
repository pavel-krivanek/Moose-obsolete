Trait {
	#name : #FmxNGTWithTypeAliases,
	#instVars : [
		'#typeAliases => FMMany type: #FmxNGTTypeAlias opposite: #aliasedType'
	],
	#category : #'FmxNG-Traits-TypeAlias'
}

{ #category : #meta }
FmxNGTWithTypeAliases classSide >> annotation [

	<MSEClass: #TWithTypeAliases super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithTypeAliases classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithTypeAliases class>>#generatedSlotNames'.
	^ #(typeAliases)
]

{ #category : #generator }
FmxNGTWithTypeAliases classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithTypeAliases >> allTypeAliases [
	| all |
	all := OrderedCollection withAll: self typeAliases.
	self typeAliases do: [:each | all addAll: each allTypeAliases ].
	^ all
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
