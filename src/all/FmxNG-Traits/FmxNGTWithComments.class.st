Class {
	#name : #FmxNGTWithComments,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#comments => FMMany type: #FmxNGTComment opposite: #container'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithComments class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithComments super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithComments >> comments [

	<generated>
	<MSEComment: 'list of comments defined in the entity'>
	^ comments
]

{ #category : #accessing }
FmxNGTWithComments >> comments: anObject [

	<generated>
	comments value: anObject

]
