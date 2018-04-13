"
FAMIXParameter represents one parameter in a method declaration.
"
Class {
	#name : #FmxNGTParameter,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentBehaviouralEntity => FMOne type: #FmxNGTWithParameters opposite: #parameters'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTParameter class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TParameter super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTParameter >> parentBehaviouralEntity [

	<generated>
	<MSEComment: 'Behavioural entity containing this parameter. belongsTo implementation'>
	<container>

	^ parentBehaviouralEntity
]

{ #category : #accessing }
FmxNGTParameter >> parentBehaviouralEntity: anObject [

	<generated>
	parentBehaviouralEntity := anObject

]
