Class {
	#name : #FmxNGTImplicitVariable,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentBehaviouralEntity => FMOne type: #FmxNGTWithImplicitVariables opposite: #implicitVariables'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTImplicitVariable class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TImplicitVariable super: #FmxNGTImplicitVariableGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
