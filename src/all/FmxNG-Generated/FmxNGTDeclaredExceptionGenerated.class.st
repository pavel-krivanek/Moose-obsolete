"
This is an exception explicitly declared as being thrown by a method.
"
Class {
	#name : #FmxNGTDeclaredExceptionGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#definingEntity => FMOne type: #FmxNGTWithDeclaredExceptions opposite: #declaredExceptions'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTDeclaredExceptionGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TDeclaredException super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTDeclaredExceptionGenerated >> definingEntity [

	^ definingEntity
]

{ #category : #accessing }
FmxNGTDeclaredExceptionGenerated >> definingEntity: anObject [

	definingEntity := anObject

]
