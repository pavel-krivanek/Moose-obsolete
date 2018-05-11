Trait {
	#name : #FmxNGTParameterizedTypeUser,
	#instVars : [
		'#argumentsInParameterizedTypes => FMOne type: #FmxNGTWithParameterizedTypeUsers opposite: #arguments'
	],
	#category : #'FmxNG-Traits-ParameterizedTypeUser'
}

{ #category : #meta }
FmxNGTParameterizedTypeUser classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TParameterizedTypeUser super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTParameterizedTypeUser classSide >> generatedSlotNames [
	<generated>
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
	argumentsInParameterizedTypes := anObject

]
