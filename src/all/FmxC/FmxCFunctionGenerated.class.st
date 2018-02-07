Class {
	#name : #FmxCFunctionGenerated,
	#superclass : #FmxCEntityGenerated,
	#instVars : [
		'#incomingInvocations => FMOne type: #FmxNGTInvocation opposite: #candidates',
		'#outgoingInvocations => FMMany type: #FmxNGTInvocation opposite: #sender'
	],
	#category : #'FmxC-Entities'
}

{ #category : #meta }
FmxCFunctionGenerated class >> annotation [

	<MSEClass: #Function super: #FmxCEntityGenerated>
	<package: #FmxC>
	^self
]

{ #category : #meta }
FmxCFunctionGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxCFunctionGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxCTFunction. FmxNGTInvocable. FmxNGTWithInvocations}
]

{ #category : #'_fromTrait_FmxNGTInvocableGenerated' }
FmxCFunctionGenerated >> incomingInvocations [

	^ incomingInvocations
]

{ #category : #'_fromTrait_FmxNGTInvocableGenerated' }
FmxCFunctionGenerated >> incomingInvocations: anObject [

	incomingInvocations := anObject

]

{ #category : #'_fromTrait_FmxNGTWithInvocationsGenerated' }
FmxCFunctionGenerated >> outgoingInvocations [

	<MSEComment: 'Outgoing invocations sent by this behaviour.'>
	^ outgoingInvocations
]

{ #category : #'_fromTrait_FmxNGTWithInvocationsGenerated' }
FmxCFunctionGenerated >> outgoingInvocations: anObject [

	outgoingInvocations value: anObject

]
