"
Represent a preprocessor #define statement

Knows the name of the macro defined
"
Trait {
	#name : #FmxNGTPreprocessorDefine,
	#category : #'FmxNG-Traits-Preprocessor'
}

{ #category : #meta }
FmxNGTPreprocessorDefine classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TPreprocessorDefine super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTPreprocessorDefine classSide >> generatedSlotNames [
	<generated>
	'FmxNGTPreprocessorDefine class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTPreprocessorDefine classSide >> generatedTraitNames [
	<generated>
	^ #()
]
