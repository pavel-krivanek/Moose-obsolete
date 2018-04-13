Class {
	#name : #FmxNGTWithExceptions,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#exceptions => FMMany type: #FmxNGTException opposite: #exceptionClass'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithExceptions class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithExceptions super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithExceptions >> exceptions [

	<generated>
	<MSEComment: 'Exceptions which class is myself.'>
	^ exceptions
]

{ #category : #accessing }
FmxNGTWithExceptions >> exceptions: anObject [

	<generated>
	exceptions value: anObject

]
