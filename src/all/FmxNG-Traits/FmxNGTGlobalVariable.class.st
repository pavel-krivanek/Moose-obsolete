"
FAMIXGlobalVariable represents a global variable in the source code.

"
Class {
	#name : #FmxNGTGlobalVariable,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentScope => FMOne type: #FmxNGTGlobalVariableScope opposite: #globalVariables'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTGlobalVariable class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TGlobalVariable super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTGlobalVariable >> parentScope [

	<generated>
	<MSEComment: 'Scope declaring the global variable. belongsTo implementation'>
	<container>

	^ parentScope
]

{ #category : #accessing }
FmxNGTGlobalVariable >> parentScope: anObject [

	<generated>
	parentScope := anObject

]
