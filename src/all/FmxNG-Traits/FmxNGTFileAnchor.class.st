Class {
	#name : #FmxNGTFileAnchor,
	#superclass : #FmxNGTFileAnchorGenerated,
	#category : #'FmxNG-Traits'
}

{ #category : #accessing }
FmxNGTFileAnchor >> encoding [
	<MSEProperty: #encoding type: #String>
	<MSEComment: 'A string representing the encoding of a file'>
	^ encoding ifNil: [ encoding := self detectEncoding ]
]
