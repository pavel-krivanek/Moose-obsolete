Trait {
	#name : #FmxNGTWithFunctions,
	#instVars : [
		'#functions => FMMany type: #FmxNGTFunction opposite: #functionOwner'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithFunctions classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithFunctions super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithFunctions classSide >> generatedSlotNames [
	<generated>
	^ #(functions)
]

{ #category : #generator }
FmxNGTWithFunctions classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithFunctions >> functions [

	<generated>
	^ functions
]

{ #category : #accessing }
FmxNGTWithFunctions >> functions: anObject [

	<generated>
	functions value: anObject

]
