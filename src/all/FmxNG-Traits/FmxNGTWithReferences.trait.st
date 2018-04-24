Trait {
	#name : #FmxNGTWithReferences,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithReferences classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithReferences super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithReferences classSide >> generatedSlotNames [
	<generated>
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
