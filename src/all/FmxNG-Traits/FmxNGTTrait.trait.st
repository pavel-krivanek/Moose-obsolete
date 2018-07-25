"
FAMIXTrait models a trait as it can be found in Pharo or PHP.
"
Trait {
	#name : #FmxNGTTrait,
	#instVars : [
		'#incomingTraitUsages => FMMany type: #FmxNGTTraitUsage opposite: #trait',
		'#traitOwner => FMOne type: #FmxNGTWithTrait opposite: #traits'
	],
	#category : #'FmxNG-Traits-Trait'
}

{ #category : #meta }
FmxNGTTrait classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TTrait super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTTrait classSide >> generatedSlotNames [
	<generated>
	'FmxNGTTrait class>>#generatedSlotNames'.
	^ #(traitOwner incomingTraitUsages)
]

{ #category : #generator }
FmxNGTTrait classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTTrait >> incomingTraitUsages [

	<generated>
	^ incomingTraitUsages
]

{ #category : #accessing }
FmxNGTTrait >> incomingTraitUsages: anObject [

	<generated>
	incomingTraitUsages value: anObject

]

{ #category : #accessing }
FmxNGTTrait >> traitOwner [

	<generated>
	^ traitOwner
]

{ #category : #accessing }
FmxNGTTrait >> traitOwner: anObject [

	<generated>
	traitOwner := anObject

]
