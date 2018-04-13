Class {
	#name : #FmxNGTWithImplicitVariables,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#implicitVariables => FMMany type: #FmxNGTImplicitVariable opposite: #parentBehaviouralEntity'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithImplicitVariables class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithImplicitVariables super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithImplicitVariables >> implicitVariables [

	<generated>
	<MSEComment: 'Implicit variables used locally by this behaviour.'>
	^ implicitVariables
]

{ #category : #accessing }
FmxNGTWithImplicitVariables >> implicitVariables: anObject [

	<generated>
	implicitVariables value: anObject

]
