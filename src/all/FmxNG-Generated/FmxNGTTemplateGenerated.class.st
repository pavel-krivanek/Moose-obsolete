Class {
	#name : #FmxNGTTemplateGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#templateUsers => FMMany type: #FmxNGTTemplateUser opposite: #template',
		'#templateOwner => FMOne type: #FmxNGTWithTemplates opposite: #templates'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTTemplateGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TTemplateGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTTemplateGenerated >> templateOwner [

	^ templateOwner
]

{ #category : #accessing }
FmxNGTTemplateGenerated >> templateOwner: anObject [

	templateOwner := anObject

]

{ #category : #accessing }
FmxNGTTemplateGenerated >> templateUsers [

	^ templateUsers
]

{ #category : #accessing }
FmxNGTTemplateGenerated >> templateUsers: anObject [

	templateUsers value: anObject

]
