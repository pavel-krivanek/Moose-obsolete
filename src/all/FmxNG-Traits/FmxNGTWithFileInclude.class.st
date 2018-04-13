Class {
	#name : #FmxNGTWithFileInclude,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#incomingIncludeRelations => FMMany type: #FmxNGTFileInclude opposite: #target',
		'#outgoingIncludeRelations => FMMany type: #FmxNGTFileInclude opposite: #source'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithFileInclude class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithFileInclude super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithFileInclude >> incomingIncludeRelations [

	<generated>
	^ incomingIncludeRelations
]

{ #category : #accessing }
FmxNGTWithFileInclude >> incomingIncludeRelations: anObject [

	<generated>
	incomingIncludeRelations value: anObject

]

{ #category : #accessing }
FmxNGTWithFileInclude >> outgoingIncludeRelations [

	<generated>
	^ outgoingIncludeRelations
]

{ #category : #accessing }
FmxNGTWithFileInclude >> outgoingIncludeRelations: anObject [

	<generated>
	outgoingIncludeRelations value: anObject

]
