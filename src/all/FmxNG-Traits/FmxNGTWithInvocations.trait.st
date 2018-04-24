Trait {
	#name : #FmxNGTWithInvocations,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithInvocations classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithInvocations super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithInvocations classSide >> generatedSlotNames [
	<generated>
	^ #(outgoingInvocations)
]

{ #category : #generator }
FmxNGTWithInvocations classSide >> generatedTraitNames [
	<generated>
	^ #()
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
