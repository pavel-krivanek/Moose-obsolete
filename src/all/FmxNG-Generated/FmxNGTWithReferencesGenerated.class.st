Class {
	#name : #FmxNGTWithReferencesGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#outgoingReferences => FMMany type: #FmxNGTReference opposite: #source'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithReferencesGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithReferencesGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithReferencesGenerated >> outgoingReferences [

	<MSEComment: 'References from this entity to other entities.'>
	^ outgoingReferences
]

{ #category : #accessing }
FmxNGTWithReferencesGenerated >> outgoingReferences: anObject [

	outgoingReferences value: anObject

]
