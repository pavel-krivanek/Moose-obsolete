Class {
	#name : #FmxNGTWithLocalVariables,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#localVariables => FMMany type: #FmxNGTLocalVariable opposite: #parentBehaviouralEntity'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithLocalVariables class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithLocalVariables super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithLocalVariables >> localVariables [

	<generated>
	<MSEComment: 'Variables locally defined by this behaviour.'>
	^ localVariables
]

{ #category : #accessing }
FmxNGTWithLocalVariables >> localVariables: anObject [

	<generated>
	localVariables value: anObject

]
