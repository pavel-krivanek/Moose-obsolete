Class {
	#name : #FmxNGTAccessible,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#incomingAccesses => FMMany type: #FmxNGTAccess opposite: #variable'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTAccessible class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TAccessible super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTAccessible >> incomingAccesses [

	<generated>
	<MSEComment: 'All Famix accesses pointing to this structural entity'>
	^ incomingAccesses
]

{ #category : #accessing }
FmxNGTAccessible >> incomingAccesses: anObject [

	<generated>
	incomingAccesses value: anObject

]
