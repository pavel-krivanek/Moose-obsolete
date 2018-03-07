Class {
	#name : #FmxNGTTemplateUserGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#template => FMOne type: #FmxNGTTemplate opposite: #templateUsers'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTTemplateUserGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TTemplateUserGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTTemplateUserGenerated >> template [

	^ template
]

{ #category : #accessing }
FmxNGTTemplateUserGenerated >> template: anObject [

	template := anObject

]
