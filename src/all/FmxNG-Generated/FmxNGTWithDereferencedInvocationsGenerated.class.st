Class {
	#name : #FmxNGTWithDereferencedInvocationsGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#dereferencedInvocations => FMMany type: #FmxNGTDereferencedInvocation opposite: #referencer'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithDereferencedInvocationsGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithDereferencedInvocations super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithDereferencedInvocationsGenerated >> dereferencedInvocations [

	<MSEComment: 'List of invocations performed on BehaviouralEntities referenced by this entity'>
	^ dereferencedInvocations
]

{ #category : #accessing }
FmxNGTWithDereferencedInvocationsGenerated >> dereferencedInvocations: anObject [

	dereferencedInvocations value: anObject

]
