"
This is an exception explicitly declared as being thrown by a method.
"
Class {
	#name : #FmxNGTDeclaredException,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#definingEntity => FMOne type: #FmxNGTWithDeclaredExceptions opposite: #declaredExceptions'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTDeclaredException class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TDeclaredException super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTDeclaredException >> definingEntity [

	<generated>
	^ definingEntity
]

{ #category : #accessing }
FmxNGTDeclaredException >> definingEntity: anObject [

	<generated>
	definingEntity := anObject

]
