"
Represent a preprocessor #ifdef/#ifndef statement

Knows the name of the macro tested and whether it is ""negated"" (#ifndef) or not (#ifdef)
"
Trait {
	#name : #FmxNGTPreprocessorIfdef,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTPreprocessorIfdef classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TPreprocessorIfdef super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTPreprocessorIfdef classSide >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGTPreprocessorIfdef classSide >> generatedTraitNames [
	<generated>
	^ #()
]
