Class {
	#name : #FmxNGTSuper,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#subs => FMMany type: #FmxNGTSub opposite: #supers'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTSuper class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TSuper super: #FmxNGTSuperGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
