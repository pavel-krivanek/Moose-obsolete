Trait {
	#name : #FmxNGTInvocationsReceiver,
	#instVars : [
		'#receivingInvocations => FMMany type: #FmxNGTInvocation opposite: #receiver'
	],
	#category : #'FmxNG-Traits-Invocation'
}

{ #category : #meta }
FmxNGTInvocationsReceiver classSide >> annotation [

	<MSEClass: #TInvocationsReceiver super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTInvocationsReceiver classSide >> generatedSlotNames [
	<generated>
	'FmxNGTInvocationsReceiver class>>#generatedSlotNames'.
	^ #(receivingInvocations)
]

{ #category : #generator }
FmxNGTInvocationsReceiver classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #adding }
FmxNGTInvocationsReceiver >> addReceivingInvocation: anInvocation [
	receivingInvocations add: anInvocation
]

{ #category : #accessing }
FmxNGTInvocationsReceiver >> receivingInvocations [

	<generated>
	<MSEComment: 'List of invocations performed on this entity (considered as the receiver)'>
	^ receivingInvocations
]

{ #category : #accessing }
FmxNGTInvocationsReceiver >> receivingInvocations: anObject [

	<generated>
	receivingInvocations value: anObject

]
