Class {
	#name : #FmxNGTParameterizedTypeUserGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#argumentsInParameterizedTypes => FMOne type: #FmxNGTWithParameterizedTypeUsers opposite: #arguments'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTParameterizedTypeUserGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TParameterizedTypeUserGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTParameterizedTypeUserGenerated >> argumentsInParameterizedTypes [

	^ argumentsInParameterizedTypes
]

{ #category : #accessing }
FmxNGTParameterizedTypeUserGenerated >> argumentsInParameterizedTypes: anObject [

	argumentsInParameterizedTypes := anObject

]
