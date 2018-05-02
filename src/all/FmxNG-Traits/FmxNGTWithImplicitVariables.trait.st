Trait {
	#name : #FmxNGTWithImplicitVariables,
	#instVars : [
		'#implicitVariables => FMMany type: #FmxNGTImplicitVariable opposite: #parentBehaviouralEntity'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithImplicitVariables classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithImplicitVariables super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithImplicitVariables classSide >> generatedSlotNames [
	<generated>
	^ #(implicitVariables)
]

{ #category : #generator }
FmxNGTWithImplicitVariables classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTWithImplicitVariables >> implicitVariables [

	<generated>
	<MSEComment: 'Implicit variables used locally by this behaviour.'>
	^ implicitVariables
]

{ #category : #accessing }
FmxNGTWithImplicitVariables >> implicitVariables: anObject [

	<generated>
	implicitVariables value: anObject

]
