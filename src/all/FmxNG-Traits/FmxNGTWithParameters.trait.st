Trait {
	#name : #FmxNGTWithParameters,
	#instVars : [
		'#parameters => FMMany type: #FmxNGTParameter opposite: #parentBehaviouralEntity'
	],
	#category : #'FmxNG-Traits-Traits'
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
	^ #(parameters)
]

{ #category : #generator }
FmxNGTWithParameters classSide >> generatedTraitNames [
	<generated>
	^ #()
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
