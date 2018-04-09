Class {
	#name : #FmxNGInvocationGenerated,
	#superclass : #FmxNGAssociation,
	#instVars : [
		'#sender => FMOne type: #FmxNGTWithInvocations opposite: #outgoingInvocations',
		'#candidates => FMMany type: #FmxNGTInvocable opposite: #incomingInvocations',
		'#receiver => FMOne type: #FmxNGTInvocationsReceiver opposite: #receivingInvocations',
		'#signature'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGInvocationGenerated class >> annotation [

	<MSEClass: #InvocationGenerated super: #FmxNGAssociation>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGInvocationGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGInvocationGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTInvocation. FmxNGTWithSignature}
]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxNGInvocationGenerated >> candidates [

	<MSEComment: 'List of candidate behavioural entities for receiving the invocation'>
	<target>

	^ candidates
]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxNGInvocationGenerated >> candidates: anObject [

	candidates value: anObject

]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxNGInvocationGenerated >> receiver [

	<MSEComment: 'Named entity (variable, class...) receiving the invocation. to-side of the association'>
	^ receiver
]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxNGInvocationGenerated >> receiver: anObject [

	receiver := anObject

]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxNGInvocationGenerated >> sender [

	<MSEComment: 'Behavioural entity making the call. from-side of the association'>
	<source>

	^ sender
]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxNGInvocationGenerated >> sender: anObject [

	sender := anObject

]

{ #category : #'_fromTrait_FmxNGTWithSignatureGenerated' }
FmxNGInvocationGenerated >> signature [

	<MSEProperty: #signature type: #String>
	<MSEComment: 'Signature of the message being sent'>
	^ signature
]

{ #category : #'_fromTrait_FmxNGTWithSignatureGenerated' }
FmxNGInvocationGenerated >> signature: anObject [

	signature := anObject

]
