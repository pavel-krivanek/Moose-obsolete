Class {
	#name : #FmxNGTGlobalVariableScopeGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#globalVariables => FMMany type: #FmxNGTGlobalVariable opposite: #parentScope'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTGlobalVariableScopeGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TGlobalVariableScopeGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTGlobalVariableScopeGenerated >> globalVariables [

	<MSEComment: 'Global variables defined in the scope, if any.'>
	^ globalVariables
]

{ #category : #accessing }
FmxNGTGlobalVariableScopeGenerated >> globalVariables: anObject [

	globalVariables value: anObject

]
