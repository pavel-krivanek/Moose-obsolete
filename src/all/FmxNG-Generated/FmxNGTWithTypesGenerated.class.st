Class {
	#name : #FmxNGTWithTypesGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#types => FMMany type: #FmxNGTType opposite: #typeContainer'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithTypesGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithTypesGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithTypesGenerated >> types [

	^ types
]

{ #category : #accessing }
FmxNGTWithTypesGenerated >> types: anObject [

	types value: anObject

]
