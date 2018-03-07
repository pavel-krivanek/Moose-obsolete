Class {
	#name : #FmxNGTWithImplicitVariablesGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#implicitVariables => FMMany type: #FmxNGTImplicitVariable opposite: #parentBehaviouralEntity'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithImplicitVariablesGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithImplicitVariablesGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithImplicitVariablesGenerated >> implicitVariables [

	<MSEComment: 'Implicit variables used locally by this behaviour.'>
	^ implicitVariables
]

{ #category : #accessing }
FmxNGTWithImplicitVariablesGenerated >> implicitVariables: anObject [

	implicitVariables value: anObject

]
