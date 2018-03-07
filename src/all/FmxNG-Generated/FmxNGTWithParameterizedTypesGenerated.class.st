Class {
	#name : #FmxNGTWithParameterizedTypesGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parameterizedTypes => FMMany type: #FmxNGTParameterizedType opposite: #parameterizableClass'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithParameterizedTypesGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithParameterizedTypesGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithParameterizedTypesGenerated >> parameterizedTypes [

	^ parameterizedTypes
]

{ #category : #accessing }
FmxNGTWithParameterizedTypesGenerated >> parameterizedTypes: anObject [

	parameterizedTypes value: anObject

]
