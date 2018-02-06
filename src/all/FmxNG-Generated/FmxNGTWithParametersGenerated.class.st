Class {
	#name : #FmxNGTWithParametersGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parameters => FMMany type: #FmxNGTParameter opposite: #parentBehaviouralEntity'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithParametersGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithParameters super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithParametersGenerated >> parameters [

	<MSEComment: 'List of formal parameters declared by this behaviour.'>
	^ parameters
]

{ #category : #accessing }
FmxNGTWithParametersGenerated >> parameters: anObject [

	parameters value: anObject

]
