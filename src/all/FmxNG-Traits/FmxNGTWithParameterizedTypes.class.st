Class {
	#name : #FmxNGTWithParameterizedTypes,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parameterizedTypes => FMMany type: #FmxNGTParameterizedType opposite: #parameterizableClass'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithParameterizedTypes class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithParameterizedTypes super: #FmxNGTWithParameterizedTypesGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
