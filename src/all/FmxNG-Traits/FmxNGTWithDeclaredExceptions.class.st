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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithDeclaredExceptions super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithDeclaredExceptions >> declaredExceptions [

	<generated>
	^ declaredExceptions
]

{ #category : #accessing }
FmxNGTWithDeclaredExceptions >> declaredExceptions: anObject [

	<generated>
	declaredExceptions value: anObject

]
