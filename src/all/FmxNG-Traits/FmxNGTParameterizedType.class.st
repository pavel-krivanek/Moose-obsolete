Class {
	#name : #FmxNGTParameterizedType,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parameterizableClass => FMOne type: #FmxNGTWithParameterizedTypes opposite: #parameterizedTypes'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTParameterizedType class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TParameterizedType super: #FmxNGTParameterizedTypeGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
