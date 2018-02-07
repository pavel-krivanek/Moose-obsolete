Class {
	#name : #FmxCInvocationGenerated,
	#superclass : #MooseEntity,
	#instVars : [
		'#sender => FMOne type: #FmxNGTWithInvocations opposite: #outgoingInvocations',
		'#candidates => FMMany type: #FmxNGTInvocable opposite: #incomingInvocations',
		'#receiver => FMOne type: #FmxNGTInvocationsReceiver opposite: #receivingInvocations'
	],
	#category : #'FmxC-Entities'
}

{ #category : #meta }
FmxCInvocationGenerated class >> annotation [

	<MSEClass: #Invocation super: #MooseEntity>
	<package: #FmxC>
	^self
]

{ #category : #meta }
FmxCInvocationGenerated class >> metamodel [

	^ CMetamodelGenerator metamodel
]

{ #category : #meta }
FmxCInvocationGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxCInvocationGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTInvocation}
]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxCInvocationGenerated >> candidates [

	<target>

	^ candidates
]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxCInvocationGenerated >> candidates: anObject [

	candidates value: anObject

]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxCInvocationGenerated >> receiver [

	<MSEComment: 'Named entity (variable, class...) receiving the invocation. to-side of the association'>
	^ receiver
]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxCInvocationGenerated >> receiver: anObject [

	receiver := anObject

]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxCInvocationGenerated >> sender [

	<MSEComment: 'Behavioural entity making the call. from-side of the association'>
	<source>

	^ sender
]

{ #category : #'_fromTrait_FmxNGTInvocationGenerated' }
FmxCInvocationGenerated >> sender: anObject [

	sender := anObject

]
