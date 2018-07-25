Trait {
	#name : #FmxNGTWithClassScope,
	#category : #'FmxNG-Traits-ClassScope'
}

{ #category : #meta }
FmxNGTWithClassScope classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithClassScope super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithClassScope classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithClassScope class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTWithClassScope classSide >> generatedTraitNames [
	<generated>
	^ #()
]
