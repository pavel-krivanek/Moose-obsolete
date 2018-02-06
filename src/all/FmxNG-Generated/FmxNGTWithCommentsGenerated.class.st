Class {
	#name : #FmxNGTWithCommentsGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#comments => FMMany type: #FmxNGTComment opposite: #container'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithCommentsGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithComments super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithCommentsGenerated >> comments [

	<MSEComment: 'list of comments defined in the entity'>
	^ comments
]

{ #category : #accessing }
FmxNGTWithCommentsGenerated >> comments: anObject [

	comments value: anObject

]
