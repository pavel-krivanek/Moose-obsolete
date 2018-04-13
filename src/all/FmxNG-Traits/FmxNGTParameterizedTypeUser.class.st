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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TParameterizedTypeUser super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTParameterizedTypeUser >> argumentsInParameterizedTypes [

	<generated>
	^ argumentsInParameterizedTypes
]

{ #category : #accessing }
FmxNGTParameterizedTypeUser >> argumentsInParameterizedTypes: anObject [

	<generated>
	argumentsInParameterizedTypes := anObject

]
