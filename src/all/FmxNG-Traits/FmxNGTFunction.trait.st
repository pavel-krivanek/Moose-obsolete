"
FAMIXFunction represents a behavioural entity in a procedural language.
"
Trait {
	#name : #FmxNGTFunction,
	#instVars : [
		'#functionOwner => FMOne type: #FmxNGTWithFunctions opposite: #functions'
	],
	#category : #'FmxNG-Traits-Function'
}

{ #category : #meta }
FmxNGTFunction classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TFunction super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTFunction classSide >> generatedSlotNames [
	<generated>
	'FmxNGTFunction class>>#generatedSlotNames'.
	^ #(functionOwner)
]

{ #category : #generator }
FmxNGTFunction classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTFunction >> functionOwner [

	<generated>
	<MSEComment: 'The container defining the function. The function is placed in a container, because certain languages can nest functions in functions.'>
	<container>

	^ functionOwner
]

{ #category : #accessing }
FmxNGTFunction >> functionOwner: anObject [

	functionOwner := anObject.
	self resetMooseName.

]

{ #category : #testing }
FmxNGTFunction >> isFunction [

	<generated>
	^ true
]
