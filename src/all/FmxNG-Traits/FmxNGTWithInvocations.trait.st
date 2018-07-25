Trait {
	#name : #FmxNGTWithInvocations,
	#instVars : [
		'#outgoingInvocations => FMMany type: #FmxNGTInvocation opposite: #sender'
	],
	#category : #'FmxNG-Traits-Invocation'
}

{ #category : #meta }
FmxNGTWithInvocations classSide >> annotation [

	<MSEClass: #TWithInvocations super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithInvocations classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithInvocations class>>#generatedSlotNames'.
	^ #(outgoingInvocations)
]

{ #category : #generator }
FmxNGTWithInvocations classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #adding }
FmxNGTWithInvocations >> addOutgoingInvocation: anInvocation [
	outgoingInvocations add: anInvocation
]

{ #category : #accessing }
FmxNGTWithInvocations >> outgoingInvocations [

	<generated>
	<MSEComment: 'Outgoing invocations sent by this behaviour.'>
	^ outgoingInvocations
]

{ #category : #accessing }
FmxNGTWithInvocations >> outgoingInvocations: anObject [

	<generated>
	outgoingInvocations value: anObject

]
