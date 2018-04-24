Class {
	#name : #FmxNGAbstractFileAnchor,
	#superclass : #FmxNGSourceAnchor,
	#traits : 'FmxNGTFileAnchor',
	#classTraits : 'FmxNGTFileAnchor classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGAbstractFileAnchor class >> annotation [

	<generated>
	<MSEClass: #AbstractFileAnchor super: #FmxNGSourceAnchor>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGAbstractFileAnchor class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGAbstractFileAnchor class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTFileAnchor)
]

{ #category : #meta }
FmxNGAbstractFileAnchor class >> requirements [

	<generated>
	^ {  }
]

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
