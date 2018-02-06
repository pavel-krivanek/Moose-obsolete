"
This is the abstract representation of an Exception. It is specific to Java. It points to an exceptionClass. The class of a FAMIXException is a normal FAMIXClass.
"
Class {
	#name : #FmxNGTExceptionGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#exceptionClass => FMOne type: #FmxNGTWithExceptions opposite: #exceptions'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTExceptionGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TException super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTExceptionGenerated >> exceptionClass [

	<MSEComment: 'Class to which the exception points. It is specific to Java'>
	^ exceptionClass
]

{ #category : #accessing }
FmxNGTExceptionGenerated >> exceptionClass: anObject [

	exceptionClass := anObject

]
