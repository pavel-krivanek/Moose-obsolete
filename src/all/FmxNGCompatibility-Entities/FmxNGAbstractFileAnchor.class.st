Class {
	#name : #FmxNGAbstractFileAnchor,
	#superclass : #FmxNGAbstractFileAnchorGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #accessing }
FmxNGAbstractFileAnchor >> detectEncoding [
	self fileReference exists
		ifFalse: [ ^ nil ].
	^ [ self fileReference binaryReadStreamDo: [ :in | (ZnCharacterEncoder detectEncoding: in upToEnd) identifier ] ]
		on: ZnCharacterEncodingError
		do: [ nil ]
]

{ #category : #accessing }
FmxNGAbstractFileAnchor >> encoding [
	^ super encoding ifNil: [ self encoding: self detectEncoding ]
]
