Class {
	#name : #FmxNGTWithMethods,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#methods => FMMany type: #FmxNGTMethod opposite: #parentType'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithMethods class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithMethods super: #FmxNGTWithMethodsGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
