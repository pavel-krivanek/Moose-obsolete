Class {
	#name : #FmxNGCommentGenerated,
	#superclass : #FmxNGSourcedEntity,
	#instVars : [
		'#content',
		'#container => FMOne type: #FmxNGTWithComments opposite: #comments'
	],
	#category : #'FmxNGCompatibility-Generated-Entities'
}

{ #category : #meta }
FmxNGCommentGenerated class >> annotation [

	<MSEClass: #CommentGenerated super: #FmxNGSourcedEntity>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGCommentGenerated class >> requirements [

	^ {  }
]

{ #category : #meta }
FmxNGCommentGenerated class >> statefulTraits [

	<statefulTraits>
	^ {FmxNGTComment}
]

{ #category : #'_fromTrait_FmxNGTComment' }
FmxNGCommentGenerated >> content [

	<MSEProperty: #content type: #String>
	<MSEComment: 'Content of the comment as a String'>
	"^ self privateState attributeAt: #content ifAbsent: [  ]"
	^ content
]
