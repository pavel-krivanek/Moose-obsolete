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

	<ignoreInTraitUsers>
	<MSEClass: #TWithFunctions super: #FmxNGTWithFunctionsGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
