Class {
	#name : #FmxNGTParameterizedTypeUser,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#argumentsInParameterizedTypes => FMOne type: #FmxNGTWithParameterizedTypeUsers opposite: #arguments'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTParameterizedTypeUser class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TParameterizedTypeUser super: #FmxNGTParameterizedTypeUserGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
