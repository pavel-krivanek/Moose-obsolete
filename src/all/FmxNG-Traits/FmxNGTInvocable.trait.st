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
	^ incomingInvocations
]

{ #category : #accessing }
FmxNGTInvocable >> incomingInvocations: anObject [

	<generated>
	incomingInvocations value: anObject

]
