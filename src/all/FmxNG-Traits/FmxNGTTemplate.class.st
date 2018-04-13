Class {
	#name : #FmxNGTTemplate,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#templateOwner => FMOne type: #FmxNGTWithTemplates opposite: #templates',
		'#templateUsers => FMMany type: #FmxNGTTemplateUser opposite: #template'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTTemplate class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TTemplate super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTTemplate >> templateOwner [

	<generated>
	^ templateOwner
]

{ #category : #accessing }
FmxNGTTemplate >> templateOwner: anObject [

	<generated>
	templateOwner := anObject

]

{ #category : #accessing }
FmxNGTTemplate >> templateUsers [

	<generated>
	^ templateUsers
]

{ #category : #accessing }
FmxNGTTemplate >> templateUsers: anObject [

	<generated>
	templateUsers value: anObject

]
