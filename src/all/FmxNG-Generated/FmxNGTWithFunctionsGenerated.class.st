Class {
	#name : #FmxNGTWithFunctionsGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#functions => FMMany type: #FmxNGTFunction opposite: #functionOwner'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithFunctionsGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithFunctionsGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithFunctionsGenerated >> functions [

	^ functions
]

{ #category : #accessing }
FmxNGTWithFunctionsGenerated >> functions: anObject [

	functions value: anObject

]
