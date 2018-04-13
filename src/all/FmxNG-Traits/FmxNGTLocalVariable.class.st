"
FAMIXLocalVariable represents a local variable in the scope of a behavioural entity.
"
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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TLocalVariable super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTLocalVariable >> parentBehaviouralEntity [

	<generated>
	<MSEComment: 'Behavioural entity declaring this local variable. belongsTo implementation'>
	<container>

	^ parentBehaviouralEntity
]

{ #category : #accessing }
FmxNGTLocalVariable >> parentBehaviouralEntity: anObject [

	<generated>
	parentBehaviouralEntity := anObject

]
