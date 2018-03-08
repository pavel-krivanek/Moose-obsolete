Class {
	#name : #FmxNGInvocationGenerated,
	#superclass : #FmxNGAssociation,
	#instVars : [
		'#signature',
		'#sender => FMOne type: #FmxNGTWithInvocations opposite: #outgoingInvocations',
		'#candidates => FMMany type: #FmxNGTInvocable opposite: #incomingInvocations',
		'#receiver => FMOne type: #FmxNGTInvocationsReceiver opposite: #receivingInvocations'
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
