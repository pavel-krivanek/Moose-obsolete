Trait {
	#name : #FmxNGTWithTrait,
	#instVars : [
		'#traits => FMMany type: #FmxNGTTrait opposite: #traitOwner'
	],
	#category : #'FmxNG-Traits-Trait'
}

{ #category : #meta }
FmxNGTWithTrait classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithTrait super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithTrait classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithTrait class>>#generatedSlotNames'.
	^ #(traits)
]

{ #category : #generator }
FmxNGTWithTrait classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithTrait >> traits [

	<generated>
	^ traits
]

{ #category : #accessing }
FmxNGTWithTrait >> traits: anObject [

	<generated>
	traits value: anObject

]
