"
FAMIXGlobalVariable represents a global variable in the source code.

"
Class {
	#name : #FmxNGTGlobalVariableGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentScope => FMOne type: #FmxNGTGlobalVariableScope opposite: #globalVariables'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTGlobalVariableGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TGlobalVariable super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTGlobalVariableGenerated >> parentScope [

	<MSEComment: 'Scope declaring the global variable. belongsTo implementation'>
	<container>

	^ parentScope
]

{ #category : #accessing }
FmxNGTGlobalVariableGenerated >> parentScope: anObject [

	parentScope := anObject

]
