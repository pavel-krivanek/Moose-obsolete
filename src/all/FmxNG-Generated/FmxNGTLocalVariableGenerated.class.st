"
FAMIXLocalVariable represents a local variable in the scope of a behavioural entity.
"
Class {
	#name : #FmxNGTLocalVariableGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentBehaviouralEntity => FMOne type: #FmxNGTWithLocalVariables opposite: #localVariables'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTLocalVariableGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TLocalVariableGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTLocalVariableGenerated >> parentBehaviouralEntity [

	<MSEComment: 'Behavioural entity declaring this local variable. belongsTo implementation'>
	<container>

	^ parentBehaviouralEntity
]

{ #category : #accessing }
FmxNGTLocalVariableGenerated >> parentBehaviouralEntity: anObject [

	parentBehaviouralEntity := anObject

]
