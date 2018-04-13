"
This is an exception that is explicitly handled by a method. For example, in Java it is an exception that appears in a catch statement.
"
Class {
	#name : #FmxNGTCaughtException,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#definingEntity => FMOne type: #FmxNGTWithCaughtExceptions opposite: #caughtExceptions'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTCaughtException class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TCaughtException super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTCaughtException >> definingEntity [

	<generated>
	^ definingEntity
]

{ #category : #accessing }
FmxNGTCaughtException >> definingEntity: anObject [

	<generated>
	definingEntity := anObject

]
