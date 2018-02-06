"
Represents an invocation which function is contained in a pointer.

The function itself is typically unknown (referenced by the pointer).

It has a referencer which is the pointer variable
"
Class {
	#name : #FmxNGTDereferencedInvocationGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#referencer => FMOne type: #FmxNGTWithDereferencedInvocations opposite: #dereferencedInvocations'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTDereferencedInvocationGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TDereferencedInvocation super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTDereferencedInvocationGenerated >> referencer [

	<MSEComment: 'Structural entity that references the BehaviouralEntity invoked'>
	^ referencer
]

{ #category : #accessing }
FmxNGTDereferencedInvocationGenerated >> referencer: anObject [

	referencer := anObject

]
