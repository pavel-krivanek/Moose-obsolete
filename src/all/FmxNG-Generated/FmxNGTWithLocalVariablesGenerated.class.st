Class {
	#name : #FmxNGTWithLocalVariablesGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#localVariables => FMMany type: #FmxNGTLocalVariable opposite: #parentBehaviouralEntity'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithLocalVariablesGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithLocalVariablesGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithLocalVariablesGenerated >> localVariables [

	<MSEComment: 'Variables locally defined by this behaviour.'>
	^ localVariables
]

{ #category : #accessing }
FmxNGTWithLocalVariablesGenerated >> localVariables: anObject [

	localVariables value: anObject

]
