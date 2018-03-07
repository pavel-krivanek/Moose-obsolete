Class {
	#name : #FmxNGTTemplate,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#templateUsers => FMMany type: #FmxNGTTemplateUser opposite: #template',
		'#templateOwner => FMOne type: #FmxNGTWithTemplates opposite: #templates'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTTemplate class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TTemplate super: #FmxNGTTemplateGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
