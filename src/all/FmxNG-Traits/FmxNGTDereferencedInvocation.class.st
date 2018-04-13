"
Represents an invocation which function is contained in a pointer.

The function itself is typically unknown (referenced by the pointer).

It has a referencer which is the pointer variable
"
Class {
	#name : #FmxNGTDereferencedInvocation,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#referencer => FMOne type: #FmxNGTWithDereferencedInvocations opposite: #dereferencedInvocations'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTDereferencedInvocation class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TDereferencedInvocation super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTDereferencedInvocation >> referencer [

	<generated>
	<MSEComment: 'Structural entity that references the BehaviouralEntity invoked'>
	^ referencer
]

{ #category : #accessing }
FmxNGTDereferencedInvocation >> referencer: anObject [

	<generated>
	referencer := anObject

]
