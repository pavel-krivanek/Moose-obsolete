Trait {
	#name : #FmxNGTWithParameterizedTypes,
	#instVars : [
		'#parameterizedTypes => FMMany type: #FmxNGTParameterizedType opposite: #parameterizableClass'
	],
	#category : #'FmxNG-Traits-ParameterizedType'
}

{ #category : #meta }
FmxNGTWithParameterizedTypes classSide >> annotation [

	<MSEClass: #TWithParameterizedTypes super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithParameterizedTypes classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithParameterizedTypes class>>#generatedSlotNames'.
	^ #(parameterizedTypes)
]

{ #category : #generator }
FmxNGTWithParameterizedTypes classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithParameterizedTypes >> parameterizedTypes [

	<generated>
	^ parameterizedTypes
]

{ #category : #accessing }
FmxNGTWithParameterizedTypes >> parameterizedTypes: anObject [

	<generated>
	parameterizedTypes value: anObject

]
