Trait {
	#name : #FmxNGTInvocationsReceiver,
	#instVars : [
		'#receivingInvocations => FMMany type: #FmxNGTInvocation opposite: #receiver'
	],
	#category : #'FmxNG-Traits-Invocation'
}

{ #category : #meta }
FmxNGTInvocationsReceiver classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TInvocationsReceiver super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTInvocationsReceiver classSide >> generatedSlotNames [
	<generated>
	^ #(receivingInvocations)
]

{ #category : #generator }
FmxNGTInvocationsReceiver classSide >> generatedTraitNames [
	<generated>
	^ #()
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
