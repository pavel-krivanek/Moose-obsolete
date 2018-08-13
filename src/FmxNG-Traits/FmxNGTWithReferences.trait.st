Trait {
	#name : #FmxNGTWithReferences,
	#instVars : [
		'#outgoingReferences => FMMany type: #FmxNGTReference opposite: #source'
	],
	#category : #'FmxNG-Traits-Reference'
}

{ #category : #meta }
FmxNGTWithReferences classSide >> annotation [

	<MSEClass: #TWithReferences super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithReferences classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithReferences class>>#generatedSlotNames'.
	^ #(outgoingReferences)
]

{ #category : #generator }
FmxNGTWithReferences classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithReferences >> outgoingReferences [

	<generated>
	<MSEComment: 'References from this entity to other entities.'>
	^ outgoingReferences
]

{ #category : #accessing }
FmxNGTWithReferences >> outgoingReferences: anObject [

	<generated>
	outgoingReferences value: anObject

]
