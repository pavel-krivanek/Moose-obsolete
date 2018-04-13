Class {
	#name : #FmxNGTWithReferences,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#outgoingReferences => FMMany type: #FmxNGTReference opposite: #source'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithReferences class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithReferences super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithReferences >> outgoingReferences [

	<generated>
	<MSEComment: 'References from this entity to other entities.'>
	^ outgoingReferences
]

{ #category : #accessing }
FmxNGTWithReferences >> outgoingReferences: anObject [

	<generated>
	outgoingReferences value: anObject

]
