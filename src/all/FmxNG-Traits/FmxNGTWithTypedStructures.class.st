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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithTypedStructures super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithTypedStructures >> structuresWithDeclaredType [

	<generated>
	^ structuresWithDeclaredType
]

{ #category : #accessing }
FmxNGTWithTypedStructures >> structuresWithDeclaredType: anObject [

	<generated>
	structuresWithDeclaredType value: anObject

]
