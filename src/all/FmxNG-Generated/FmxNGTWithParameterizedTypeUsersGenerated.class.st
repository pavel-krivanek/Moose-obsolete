Class {
	#name : #FmxNGTWithParameterizedTypeUsersGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#arguments => FMMany type: #FmxNGTParameterizedTypeUser opposite: #argumentsInParameterizedTypes'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithParameterizedTypeUsersGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithParameterizedTypeUsersGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithParameterizedTypeUsersGenerated >> arguments [

	^ arguments
]

{ #category : #accessing }
FmxNGTWithParameterizedTypeUsersGenerated >> arguments: anObject [

	arguments value: anObject

]
