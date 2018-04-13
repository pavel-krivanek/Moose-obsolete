Class {
	#name : #FmxNGTTemplateUser,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#template => FMOne type: #FmxNGTTemplate opposite: #templateUsers'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTTemplateUser class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TTemplateUser super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTTemplateUser >> template [

	<generated>
	^ template
]

{ #category : #accessing }
FmxNGTTemplateUser >> template: anObject [

	<generated>
	template := anObject

]
