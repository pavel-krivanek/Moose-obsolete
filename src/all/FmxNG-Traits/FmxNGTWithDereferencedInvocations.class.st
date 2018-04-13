Class {
	#name : #FmxNGTWithDereferencedInvocations,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#dereferencedInvocations => FMMany type: #FmxNGTDereferencedInvocation opposite: #referencer'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithDereferencedInvocations class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithDereferencedInvocations super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithDereferencedInvocations >> dereferencedInvocations [

	<generated>
	<MSEComment: 'List of invocations performed on BehaviouralEntities referenced by this entity'>
	^ dereferencedInvocations
]

{ #category : #accessing }
FmxNGTWithDereferencedInvocations >> dereferencedInvocations: anObject [

	<generated>
	dereferencedInvocations value: anObject

]
