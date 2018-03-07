"
This is an exception that is explicitly handled by a method. For example, in Java it is an exception that appears in a catch statement.
"
Class {
	#name : #FmxNGTCaughtExceptionGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#definingEntity => FMOne type: #FmxNGTWithCaughtExceptions opposite: #caughtExceptions'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTCaughtExceptionGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TCaughtExceptionGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTCaughtExceptionGenerated >> definingEntity [

	^ definingEntity
]

{ #category : #accessing }
FmxNGTCaughtExceptionGenerated >> definingEntity: anObject [

	definingEntity := anObject

]
