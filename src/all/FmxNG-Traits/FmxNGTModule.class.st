Class {
	#name : #FmxNGTModule,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#moduleFiles => FMMany type: #FmxNGTWithModule opposite: #module'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTModule class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TModule super: #FmxNGTModuleGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
