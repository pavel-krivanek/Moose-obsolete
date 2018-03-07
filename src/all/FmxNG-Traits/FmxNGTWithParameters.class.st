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

	<ignoreInTraitUsers>
	<MSEClass: #TWithParameters super: #FmxNGTWithParametersGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
