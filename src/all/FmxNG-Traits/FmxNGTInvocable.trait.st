Trait {
	#name : #FmxNGTInvocable,
	#instVars : [
		'#incomingInvocations => FMMany type: #FmxNGTInvocation opposite: #candidates'
	],
	#category : #'FmxNG-Traits-Invocation'
}

{ #category : #meta }
FmxNGTInvocable classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TInvocable super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTInvocable classSide >> generatedSlotNames [
	<generated>
	'FmxNGTInvocable class>>#generatedSlotNames'.
	^ #(incomingInvocations)
]

{ #category : #generator }
FmxNGTInvocable classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTInvocable >> incomingInvocations [

	<generated>
	<MSEComment: 'Incoming invocations from other behaviours computed by the candidate operator.'>
	^ incomingInvocations
]

{ #category : #accessing }
FmxNGTInvocable >> incomingInvocations: anObject [

	<generated>
	incomingInvocations value: anObject

]
