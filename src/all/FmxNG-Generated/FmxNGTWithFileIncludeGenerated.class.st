Class {
	#name : #FmxNGTWithFileIncludeGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#incomingIncludeRelations => FMMany type: #FmxNGTFileInclude opposite: #target',
		'#outgoingIncludeRelations => FMMany type: #FmxNGTFileInclude opposite: #source'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithFileIncludeGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithFileIncludeGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithFileIncludeGenerated >> incomingIncludeRelations [

	^ incomingIncludeRelations
]

{ #category : #accessing }
FmxNGTWithFileIncludeGenerated >> incomingIncludeRelations: anObject [

	incomingIncludeRelations value: anObject

]

{ #category : #accessing }
FmxNGTWithFileIncludeGenerated >> outgoingIncludeRelations [

	^ outgoingIncludeRelations
]

{ #category : #accessing }
FmxNGTWithFileIncludeGenerated >> outgoingIncludeRelations: anObject [

	outgoingIncludeRelations value: anObject

]
