"
FAMIXComment represents one instance of a comment (in the sense of programming language comments) for any Famix sourced entity. The commented sourced entity is called the container in the FAMIX model.
"
Class {
	#name : #FmxNGTComment,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#container => FMOne type: #FmxNGTWithComments opposite: #comments',
		'#content'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTComment class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TComment super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTComment >> container [

	<generated>
	<MSEComment: 'Source code entity containing the comment'>
	^ container
]

{ #category : #accessing }
FmxNGTComment >> container: anObject [

	<generated>
	container := anObject

]

{ #category : #accessing }
FmxNGTComment >> content [

	<MSEProperty: #content type: #String>
	<generated>
	<MSEComment: 'Content of the comment as a String'>
	^ content
]

{ #category : #accessing }
FmxNGTComment >> content: anObject [

	<generated>
	content := anObject

]
