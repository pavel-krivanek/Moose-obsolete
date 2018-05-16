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
Trait {
	#name : #FmxNGTInvocation,
	#instVars : [
		'#candidates => FMMany type: #FmxNGTInvocable opposite: #incomingInvocations',
		'#receiver => FMOne type: #FmxNGTInvocationsReceiver opposite: #receivingInvocations',
		'#sender => FMOne type: #FmxNGTWithInvocations opposite: #outgoingInvocations'
	],
	#category : #'FmxNG-Traits-Invocation'
}

{ #category : #meta }
FmxNGTInvocation classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TInvocation super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTInvocation classSide >> generatedSlotNames [
	<generated>
	^ #(sender candidates receiver)
]

{ #category : #generator }
FmxNGTInvocation classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTInvocation >> candidates [

	<generated>
	<MSEComment: 'List of candidate behavioural entities for receiving the invocation'>
	<target>

	^ candidates
]

{ #category : #accessing }
FmxNGTInvocation >> candidates: anObject [

	<generated>
	candidates value: anObject

]

{ #category : #testing }
FmxNGTInvocation >> isInvocation [

	<generated>
	^ true
]

{ #category : #accessing }
FmxNGTInvocation >> receiver [

	<generated>
	<MSEComment: 'Named entity (variable, class...) receiving the invocation. to-side of the association'>
	^ receiver
]

{ #category : #accessing }
FmxNGTInvocation >> receiver: anObject [

	<generated>
	receiver := anObject

]

{ #category : #accessing }
FmxNGTInvocation >> sender [

	<generated>
	<MSEComment: 'Behavioural entity making the call. from-side of the association'>
	<source>

	^ sender
]

{ #category : #accessing }
FmxNGTInvocation >> sender: anObject [

	<generated>
	sender := anObject

]
