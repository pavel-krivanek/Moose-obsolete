"
This is the abstract representation of an Exception. It is specific to Java. It points to an exceptionClass. The class of a FAMIXException is a normal FAMIXClass.
"
Class {
	#name : #FmxNGTException,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#exceptionClass => FMOne type: #FmxNGTWithExceptions opposite: #exceptions'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTException class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TException super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTException >> exceptionClass [

	<generated>
	<MSEComment: 'Class to which the exception points. It is specific to Java'>
	^ exceptionClass
]

{ #category : #accessing }
FmxNGTException >> exceptionClass: anObject [

	<generated>
	exceptionClass := anObject

]
