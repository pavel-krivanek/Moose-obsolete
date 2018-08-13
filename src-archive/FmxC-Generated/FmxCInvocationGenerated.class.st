Class {
	#name : #FmxCInvocationGenerated,
	#superclass : #MooseEntity,
	#instVars : [
		'#sender => FMOne type: #FmxNGTWithInvocations opposite: #outgoingInvocations',
		'#candidates => FMMany type: #FmxNGTInvocable opposite: #incomingInvocations',
		'#receiver => FMOne type: #FmxNGTInvocationsReceiver opposite: #receivingInvocations'
	],
	#category : #'FmxC-Generated-Entities'
}

{ #category : #meta }
FmxCInvocationGenerated class >> annotation [

	<MSEClass: #InvocationGenerated super: #MooseEntity>
	<package: #'FmxC-Generated'>
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
