Class {
	#name : #FmxNGTAccessibleGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#incomingAccesses => FMMany type: #FmxNGTAccess opposite: #variable'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTAccessibleGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TAccessible super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTAccessibleGenerated >> incomingAccesses [

	<MSEComment: 'All Famix accesses pointing to this structural entity'>
	^ incomingAccesses
]

{ #category : #accessing }
FmxNGTAccessibleGenerated >> incomingAccesses: anObject [

	incomingAccesses value: anObject

]
