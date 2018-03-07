Class {
	#name : #FmxNGTGlobalVariableScope,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#globalVariables => FMMany type: #FmxNGTGlobalVariable opposite: #parentScope'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTGlobalVariableScope class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TGlobalVariableScope super: #FmxNGTGlobalVariableScopeGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
