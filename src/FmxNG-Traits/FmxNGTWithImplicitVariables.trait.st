Trait {
	#name : #FmxNGTWithImplicitVariables,
	#instVars : [
		'#implicitVariables => FMMany type: #FmxNGTImplicitVariable opposite: #parentBehaviouralEntity'
	],
	#category : #'FmxNG-Traits-ImplicitVariable'
}

{ #category : #meta }
FmxNGTWithImplicitVariables classSide >> annotation [

	<MSEClass: #TWithImplicitVariables super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithImplicitVariables classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithImplicitVariables class>>#generatedSlotNames'.
	^ #(implicitVariables)
]

{ #category : #generator }
FmxNGTWithImplicitVariables classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #adding }
FmxNGTWithImplicitVariables >> addImplicitVariable: anImplicitVariable [
	implicitVariables add: anImplicitVariable
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
