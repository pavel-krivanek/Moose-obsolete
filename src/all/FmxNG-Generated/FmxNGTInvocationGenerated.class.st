"
FAMIXInvocation represents the invocation of a message (signature) on a receiver by a behavioural entity. 
FAMIXInvocation has:
   (i)  sender: the behavioral entity that sends the message;
   (ii) receiver: the structural entity (variable) that receives the message;
   (iii) candidates: the list of potential behavioral entities that are actually being invoked. This is particularly useful for dynamic languages.

In an invocation, From is the sender of the message and To is the list of candidates. For each invocation in the source code, there is one famix invocation created even if it is from the same behavioral entity towards the same variable and the same message. For example in smalltalk, the following code
anObject aSelector.
will produce one invocation association from current method to a variable anObject with candidate aSelector. The list of candidates will also contain all the methods defining a similar signature as aSelector. 

"
Class {
	#name : #FmxNGTInvocationGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#sender => FMOne type: #FmxNGTWithInvocations opposite: #outgoingInvocations',
		'#candidates => FMMany type: #FmxNGTInvocable opposite: #incomingInvocations',
		'#receiver => FMOne type: #FmxNGTInvocationsReceiver opposite: #receivingInvocations'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTInvocationGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TInvocationGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTInvocationGenerated >> candidates [

	<target>

	^ candidates
]

{ #category : #accessing }
FmxNGTInvocationGenerated >> candidates: anObject [

	candidates value: anObject

]

{ #category : #accessing }
FmxNGTInvocationGenerated >> receiver [

	<MSEComment: 'Named entity (variable, class...) receiving the invocation. to-side of the association'>
	^ receiver
]

{ #category : #accessing }
FmxNGTInvocationGenerated >> receiver: anObject [

	receiver := anObject

]

{ #category : #accessing }
FmxNGTInvocationGenerated >> sender [

	<MSEComment: 'Behavioural entity making the call. from-side of the association'>
	<source>

	^ sender
]

{ #category : #accessing }
FmxNGTInvocationGenerated >> sender: anObject [

	sender := anObject

]
