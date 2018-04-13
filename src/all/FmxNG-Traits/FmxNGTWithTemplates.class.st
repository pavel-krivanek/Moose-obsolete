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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithTemplates super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithTemplates >> templates [

	<generated>
	^ templates
]

{ #category : #accessing }
FmxNGTWithTemplates >> templates: anObject [

	<generated>
	templates value: anObject

]
