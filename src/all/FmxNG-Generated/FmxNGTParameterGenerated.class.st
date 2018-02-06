"
FAMIXParameter represents one parameter in a method declaration.
"
Class {
	#name : #FmxNGTParameterGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentBehaviouralEntity => FMOne type: #FmxNGTWithParameters opposite: #parameters'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTParameterGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TParameter super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTParameterGenerated >> parentBehaviouralEntity [

	<MSEComment: 'Behavioural entity containing this parameter. belongsTo implementation'>
	<container>

	^ parentBehaviouralEntity
]

{ #category : #accessing }
FmxNGTParameterGenerated >> parentBehaviouralEntity: anObject [

	parentBehaviouralEntity := anObject

]
