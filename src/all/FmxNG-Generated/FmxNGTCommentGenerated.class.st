"
FAMIXComment represents one instance of a comment (in the sense of programming language comments) for any Famix sourced entity. The commented sourced entity is called the container in the FAMIX model.
"
Class {
	#name : #FmxNGTCommentGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#content',
		'#container => FMOne type: #FmxNGTWithComments opposite: #comments'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTCommentGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TCommentGenerated super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTCommentGenerated >> container [

	<MSEComment: 'Source code entity containing the comment'>
	^ container
]

{ #category : #accessing }
FmxNGTCommentGenerated >> container: anObject [

	container := anObject

]

{ #category : #accessing }
FmxNGTCommentGenerated >> content [

	<MSEProperty: #content type: #String>
	<MSEComment: 'Content of the comment as a String'>
	^ content
]

{ #category : #accessing }
FmxNGTCommentGenerated >> content: anObject [

	content := anObject

]
