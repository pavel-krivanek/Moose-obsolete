Class {
	#name : #FmxNGTReferenceable,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#incomingReferences => FMMany type: #FmxNGTReference opposite: #target'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTReferenceable class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TReferenceable super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTReferenceable >> incomingReferences [

	<generated>
	<MSEComment: 'References to this entity by other entities.'>
	^ incomingReferences
]

{ #category : #accessing }
FmxNGTReferenceable >> incomingReferences: anObject [

	<generated>
	incomingReferences value: anObject

]
