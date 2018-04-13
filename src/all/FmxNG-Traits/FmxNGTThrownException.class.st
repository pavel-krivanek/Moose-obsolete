"
This is an exception explicitly thrown by a method.
"
Class {
	#name : #FmxNGTThrownException,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#definingEntity => FMOne type: #FmxNGTWithThrownExceptions opposite: #thrownExceptions'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTThrownException class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TThrownException super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTThrownException >> definingEntity [

	<generated>
	^ definingEntity
]

{ #category : #accessing }
FmxNGTThrownException >> definingEntity: anObject [

	<generated>
	definingEntity := anObject

]
