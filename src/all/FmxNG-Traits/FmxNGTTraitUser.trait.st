Trait {
	#name : #FmxNGTTraitUser,
	#instVars : [
		'#outgoingTraitUsages => FMMany type: #FmxNGTTraitUsage opposite: #user'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTTraitUser classSide >> annotation [

	<MSEClass: #TTraitUser super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTTraitUser classSide >> generatedSlotNames [
	<generated>
	'FmxNGTTraitUser class>>#generatedSlotNames'.
	^ #(outgoingTraitUsages)
]

{ #category : #generator }
FmxNGTTraitUser classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTTraitUser >> outgoingTraitUsages [

	<generated>
	^ outgoingTraitUsages
]

{ #category : #accessing }
FmxNGTTraitUser >> outgoingTraitUsages: anObject [

	<generated>
	outgoingTraitUsages value: anObject

]
