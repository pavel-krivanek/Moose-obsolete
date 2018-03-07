Class {
	#name : #FmxNGTWithTemplatesGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#templates => FMMany type: #FmxNGTTemplate opposite: #templateOwner'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithTemplatesGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithTemplatesGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithTemplatesGenerated >> templates [

	^ templates
]

{ #category : #accessing }
FmxNGTWithTemplatesGenerated >> templates: anObject [

	templates value: anObject

]
