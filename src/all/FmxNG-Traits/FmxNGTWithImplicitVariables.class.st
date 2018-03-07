Class {
	#name : #FmxNGTWithImplicitVariables,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#implicitVariables => FMMany type: #FmxNGTImplicitVariable opposite: #parentBehaviouralEntity'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithImplicitVariables class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithImplicitVariables super: #FmxNGTWithImplicitVariablesGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
