Class {
	#name : #FmxNGTWithDeclaredExceptions,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#declaredExceptions => FMMany type: #FmxNGTDeclaredException opposite: #definingEntity'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithDeclaredExceptions class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithDeclaredExceptions super: #FmxNGTWithDeclaredExceptionsGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
