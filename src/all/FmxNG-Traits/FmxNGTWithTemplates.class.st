Class {
	#name : #FmxNGTWithTemplates,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#templates => FMMany type: #FmxNGTTemplate opposite: #templateOwner'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithTemplates class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithTemplates super: #FmxNGTWithTemplatesGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
