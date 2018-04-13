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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TGlobalVariableScope super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTGlobalVariableScope >> globalVariables [

	<generated>
	<MSEComment: 'Global variables defined in the scope, if any.'>
	^ globalVariables
]

{ #category : #accessing }
FmxNGTGlobalVariableScope >> globalVariables: anObject [

	<generated>
	globalVariables value: anObject

]
