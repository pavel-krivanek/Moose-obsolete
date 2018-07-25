Trait {
	#name : #FmxNGTWithParameterizedTypeUsers,
	#instVars : [
		'#arguments => FMMany type: #FmxNGTParameterizedTypeUser opposite: #argumentsInParameterizedTypes'
	],
	#category : #'FmxNG-Traits-ParameterizedTypeUser'
}

{ #category : #meta }
FmxNGTWithParameterizedTypeUsers classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithParameterizedTypeUsers super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithParameterizedTypeUsers classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithParameterizedTypeUsers class>>#generatedSlotNames'.
	^ #(arguments)
]

{ #category : #generator }
FmxNGTWithParameterizedTypeUsers classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithParameterizedTypeUsers >> arguments [

	<generated>
	^ arguments
]

{ #category : #accessing }
FmxNGTWithParameterizedTypeUsers >> arguments: anObject [

	arguments value: anObject.
	self resetMooseName.

]
