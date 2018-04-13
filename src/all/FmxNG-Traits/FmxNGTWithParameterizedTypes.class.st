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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithParameterizedTypes super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithParameterizedTypes >> parameterizedTypes [

	<generated>
	^ parameterizedTypes
]

{ #category : #accessing }
FmxNGTWithParameterizedTypes >> parameterizedTypes: anObject [

	<generated>
	parameterizedTypes value: anObject

]
