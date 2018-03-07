Class {
	#name : #FmxNGTWithLocalVariables,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#localVariables => FMMany type: #FmxNGTLocalVariable opposite: #parentBehaviouralEntity'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithLocalVariables class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithLocalVariables super: #FmxNGTWithLocalVariablesGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
