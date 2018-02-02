Class {
	#name : #FmxNGTComment,
	#superclass : #FmxNGTCommentGenerated,
	#category : #'FmxNG-Traits'
}

{ #category : #accessing }
FmxNGTComment >> content [

	<MSEProperty: #content type: #String>
	<MSEComment: 'Content of the comment as a String'>
	"^ self privateState attributeAt: #content ifAbsent: [  ]"
	^ content
]
