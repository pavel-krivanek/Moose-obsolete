"
This is an exception explicitly thrown by a method.
"
Class {
	#name : #FmxNGTThrownExceptionGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#definingEntity => FMOne type: #FmxNGTWithThrownExceptions opposite: #thrownExceptions'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTThrownExceptionGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TThrownException super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTThrownExceptionGenerated >> definingEntity [

	^ definingEntity
]

{ #category : #accessing }
FmxNGTThrownExceptionGenerated >> definingEntity: anObject [

	definingEntity := anObject

]
