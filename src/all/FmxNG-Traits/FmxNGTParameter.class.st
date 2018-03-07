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

	<ignoreInTraitUsers>
	<MSEClass: #TParameter super: #FmxNGTParameterGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
