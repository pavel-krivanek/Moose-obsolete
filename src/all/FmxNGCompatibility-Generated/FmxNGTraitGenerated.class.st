Class {
	#name : #FmxNGTraitGenerated,
	#superclass : #FmxNGType,
	#instVars : [
		'#traitOwner => FMOne type: #FmxNGTWithTrait opposite: #traits',
		'#incomingTraitUsages => FMMany type: #FmxNGTTraitUsage opposite: #trait'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGTraitGenerated class >> annotation [

	<MSEClass: #TraitGenerated super: #FmxNGType>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGTraitGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGTraitGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTTrait}
]

{ #category : #'_fromTrait_FmxNGTTraitGenerated' }
FmxNGTraitGenerated >> incomingTraitUsages [

	^ incomingTraitUsages
]

{ #category : #'_fromTrait_FmxNGTTraitGenerated' }
FmxNGTraitGenerated >> incomingTraitUsages: anObject [

	incomingTraitUsages value: anObject

]

{ #category : #'_fromTrait_FmxNGTTraitGenerated' }
FmxNGTraitGenerated >> traitOwner [

	^ traitOwner
]

{ #category : #'_fromTrait_FmxNGTTraitGenerated' }
FmxNGTraitGenerated >> traitOwner: anObject [

	traitOwner := anObject

]
