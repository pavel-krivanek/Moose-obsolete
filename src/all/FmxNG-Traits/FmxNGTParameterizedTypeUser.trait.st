Trait {
	#name : #FmxNGTParameterizedTypeUser,
	#instVars : [
		'#argumentsInParameterizedTypes => FMMany type: #FmxNGTWithParameterizedTypeUsers opposite: #arguments'
	],
	#category : #'FmxNG-Traits-ParameterizedTypeUser'
}

{ #category : #meta }
FmxNGTParameterizedTypeUser classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TParameterizedTypeUser super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTParameterizedTypeUser classSide >> generatedSlotNames [
	<generated>
	'FmxNGTParameterizedTypeUser class>>#generatedSlotNames'.
	^ #(argumentsInParameterizedTypes)
]

{ #category : #generator }
FmxNGTParameterizedTypeUser classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTParameterizedTypeUser >> argumentsInParameterizedTypes [

	<generated>
	^ argumentsInParameterizedTypes
]

{ #category : #accessing }
FmxNGTParameterizedTypeUser >> argumentsInParameterizedTypes: anObject [

	<generated>
	argumentsInParameterizedTypes value: anObject

]
