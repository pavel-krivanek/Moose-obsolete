Trait {
	#name : #FmxNGTWithFunctions,
	#instVars : [
		'#functions => FMMany type: #FmxNGTFunction opposite: #functionOwner'
	],
	#category : #'FmxNG-Traits-Function'
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
	'FmxNGTWithFunctions class>>#generatedSlotNames'.
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
	<MSEComment: 'Functions defined in the container, if any.'>
	^ functions
]

{ #category : #accessing }
FmxNGTWithFunctions >> functions: anObject [

	<generated>
	functions value: anObject

]
