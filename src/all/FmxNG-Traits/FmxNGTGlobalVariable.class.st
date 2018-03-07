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

	<ignoreInTraitUsers>
	<MSEClass: #TGlobalVariable super: #FmxNGTGlobalVariableGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
