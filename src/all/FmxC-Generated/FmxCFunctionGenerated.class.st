Class {
	#name : #FmxCFunctionGenerated,
	#superclass : #FmxCEntity,
	#instVars : [
		'#outgoingInvocations => FMMany type: #FmxNGTInvocation opposite: #sender',
		'#incomingInvocations => FMOne type: #FmxNGTInvocation opposite: #candidates'
	],
	#category : #'FmxC-Generated-Entities'
}

{ #category : #meta }
FmxCFunctionGenerated class >> annotation [

	<MSEClass: #FunctionGenerated super: #FmxCEntity>
	<package: #'FmxC-Generated'>
	^self
]

{ #category : #meta }
FmxCFunctionGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxCFunctionGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTInvocable. FmxNGTWithInvocations}
]
