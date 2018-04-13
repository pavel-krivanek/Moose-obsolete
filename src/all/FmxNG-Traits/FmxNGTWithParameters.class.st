Class {
	#name : #FmxNGTWithParameters,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parameters => FMMany type: #FmxNGTParameter opposite: #parentBehaviouralEntity'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithParameters class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithParameters super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithParameters >> parameters [

	<generated>
	<MSEComment: 'List of formal parameters declared by this behaviour.'>
	^ parameters
]

{ #category : #accessing }
FmxNGTWithParameters >> parameters: anObject [

	<generated>
	parameters value: anObject

]
