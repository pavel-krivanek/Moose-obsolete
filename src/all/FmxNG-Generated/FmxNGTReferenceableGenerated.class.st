Class {
	#name : #FmxNGTReferenceableGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#incomingReferences => FMMany type: #FmxNGTReference opposite: #target'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTReferenceableGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TReferenceable super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTReferenceableGenerated >> incomingReferences [

	<MSEComment: 'References to this entity by other entities.'>
	^ incomingReferences
]

{ #category : #accessing }
FmxNGTReferenceableGenerated >> incomingReferences: anObject [

	incomingReferences value: anObject

]
