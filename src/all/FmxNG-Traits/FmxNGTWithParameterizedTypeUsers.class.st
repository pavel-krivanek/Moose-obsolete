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

	<ignoreInTraitUsers>
	<MSEClass: #TWithParameterizedTypeUsers super: #FmxNGTWithParameterizedTypeUsersGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
