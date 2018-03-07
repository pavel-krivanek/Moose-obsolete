Class {
	#name : #FmxNGTWithAccessesGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#accesses => FMMany type: #FmxNGTAccess opposite: #accessor'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithAccessesGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithAccessesGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithAccessesGenerated >> accesses [

	<MSEComment: 'Accesses to variables made by this behaviour.'>
	^ accesses
]

{ #category : #accessing }
FmxNGTWithAccessesGenerated >> accesses: anObject [

	accesses value: anObject

]
