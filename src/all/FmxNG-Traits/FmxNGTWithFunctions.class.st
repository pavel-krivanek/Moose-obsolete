Class {
	#name : #FmxNGTWithFunctions,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#functions => FMMany type: #FmxNGTFunction opposite: #functionOwner'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithFunctions class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithFunctions super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithFunctions >> functions [

	<generated>
	^ functions
]

{ #category : #accessing }
FmxNGTWithFunctions >> functions: anObject [

	<generated>
	functions value: anObject

]
