Class {
	#name : #FmxNGTWithParameterizedTypeUsers,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#arguments => FMMany type: #FmxNGTParameterizedTypeUser opposite: #argumentsInParameterizedTypes'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithParameterizedTypeUsers class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithParameterizedTypeUsers super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithParameterizedTypeUsers >> arguments [

	<generated>
	^ arguments
]

{ #category : #accessing }
FmxNGTWithParameterizedTypeUsers >> arguments: anObject [

	<generated>
	arguments value: anObject

]
