Class {
	#name : #FmxNGTWithTypedStructuresGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#structuresWithDeclaredType => FMMany type: #FmxNGTTypedStructure opposite: #declaredType'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithTypedStructuresGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithTypedStructuresGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithTypedStructuresGenerated >> structuresWithDeclaredType [

	^ structuresWithDeclaredType
]

{ #category : #accessing }
FmxNGTWithTypedStructuresGenerated >> structuresWithDeclaredType: anObject [

	structuresWithDeclaredType value: anObject

]
