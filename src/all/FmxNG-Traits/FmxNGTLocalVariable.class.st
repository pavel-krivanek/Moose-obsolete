Class {
	#name : #FmxNGTLocalVariable,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentBehaviouralEntity => FMOne type: #FmxNGTWithLocalVariables opposite: #localVariables'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTLocalVariable class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TLocalVariable super: #FmxNGTLocalVariableGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
