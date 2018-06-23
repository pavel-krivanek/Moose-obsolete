Trait {
	#name : #FmxNGTWithParameters,
	#instVars : [
		'#parameters => FMMany type: #FmxNGTParameter opposite: #parentBehaviouralEntity'
	],
	#category : #'FmxNG-Traits-Parameter'
}

{ #category : #meta }
FmxNGTWithParameters classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithParameters super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithParameters classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithParameters class>>#generatedSlotNames'.
	^ #(parameters)
]

{ #category : #generator }
FmxNGTWithParameters classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithParameters >> numberOfParameters [
	<MSEProperty: #numberOfParameters type: #Number>
	<MSEComment: 'The number of parameters in a method'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfParameters computedAs: [ self parameters size ]
]

{ #category : #accessing }
FmxNGTWithParameters >> numberOfParameters: aNumber [

	self privateState propertyAt: #numberOfParameters put: aNumber
]

{ #category : #accessing }
FmxNGTWithParameters >> parameters [

	<generated>
	<MSEComment: 'List of formal parameters declared by this behaviour.'>
	^ parameters
]

{ #category : #accessing }
FmxNGTWithParameters >> parameters: anObject [

	<generated>
	parameters value: anObject

]
