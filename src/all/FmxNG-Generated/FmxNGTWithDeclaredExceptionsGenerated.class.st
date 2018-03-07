Class {
	#name : #FmxNGTWithDeclaredExceptionsGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#declaredExceptions => FMMany type: #FmxNGTDeclaredException opposite: #definingEntity'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithDeclaredExceptionsGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithDeclaredExceptionsGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithDeclaredExceptionsGenerated >> declaredExceptions [

	^ declaredExceptions
]

{ #category : #accessing }
FmxNGTWithDeclaredExceptionsGenerated >> declaredExceptions: anObject [

	declaredExceptions value: anObject

]
