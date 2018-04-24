"
FAMIXTrait models a trait as it can be found in Pharo or PHP.
"
Trait {
	#name : #FmxNGTTrait,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTTrait classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TTrait super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTTrait classSide >> generatedSlotNames [
	<generated>
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
