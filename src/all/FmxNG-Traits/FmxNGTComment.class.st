Class {
	#name : #FmxNGTComment,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#content',
		'#container => FMOne type: #FmxNGTWithComments opposite: #comments'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTComment class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TComment super: #FmxNGTCommentGenerated>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTComment >> content [

	<MSEProperty: #content type: #String>
	<MSEComment: 'Content of the comment as a String'>
	"^ self privateState attributeAt: #content ifAbsent: [  ]"
	^ content
]
