Class {
	#name : #FmxNGTWithTypedStructures,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#structuresWithDeclaredType => FMMany type: #FmxNGTTypedStructure opposite: #declaredType'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithTypedStructures class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithTypedStructures super: #FmxNGTWithTypedStructuresGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
