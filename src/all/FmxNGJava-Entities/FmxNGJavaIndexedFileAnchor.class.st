Class {
	#name : #FmxNGJavaIndexedFileAnchor,
	#superclass : #FmxNGJavaAbstractFileAnchor,
	#instVars : [
		'endPos',
		'startPos'
	],
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaIndexedFileAnchor class >> annotation [

	<generated>
	<MSEClass: #IndexedFileAnchor super: #FmxNGJavaAbstractFileAnchor>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaIndexedFileAnchor class >> generatedSlotNames [
	<generated>
	'FmxNGJavaIndexedFileAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaIndexedFileAnchor class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGJavaIndexedFileAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaIndexedFileAnchor >> countNumberOfLinesRuturnsFrom: aStream from: start to: end [
	"Here is a speedup version of the #lineCount method for the IndexedFileAnchors.
	If we have the file of the entity, instead of reading the full file we can jump directly to the startPos in the stream of the file and read the characters until the endPos. 
	If it is a cr we increment a counter and we ignore a potential lf to manage crlf. If this is a lf, we increment."

	| count char |
	count := 1.
	"Go to the start position in the stream"
	1 to: start - 1 do: [ :i | aStream next ].
	[ aStream position < end ]
		whileTrue: [ 
			(char := aStream next) isCr
				ifTrue: [ "We increment the counter if it is a CR and we ignore a potential LF to manage CRLF"
					count := count + 1.
					(char := aStream peek) isLf
						ifTrue: [ aStream next ] ]
				ifFalse: [ char isLf
						ifTrue: [ "Since we manage CRLF before we can just increment the counter" count := count + 1 ] ] ].
	^ count
]

{ #category : #'as yet unclassified' }
FmxNGJavaIndexedFileAnchor >> endPos [
	<MSEProperty: #endPos type: #Number>
	<MSEComment: 'Stop position in the source'>
	^ endPos
]

{ #category : #'as yet unclassified' }
FmxNGJavaIndexedFileAnchor >> endPos: aNumber [
	endPos := aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaIndexedFileAnchor >> intervalAsCharPos [
	^ self startPos to: self endPos
]

{ #category : #'as yet unclassified' }
FmxNGJavaIndexedFileAnchor >> lineCount [
	| file |
	^ (file := self fileReference) exists
		ifTrue: [ file
				binaryReadStreamDo: [ :in | 
					| stream |
					stream := ZnCharacterReadStream on: in encoding: self encoding.
					self countNumberOfLinesRuturnsFrom: stream from: (startPos ifNil: [ 1 ]) to: (self endPos ifNil: [ in size ]) ] ]
		ifFalse: [ super lineCount ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaIndexedFileAnchor >> mooseNameOn: aStream [
	super mooseNameOn: aStream.
	aStream
		nextPut: $(;
		nextPut: $(;
		nextPutAll: self startPos asString;
		nextPut: $-;
		nextPutAll: self endPos asString;
		nextPut: $).

]

{ #category : #'as yet unclassified' }
FmxNGJavaIndexedFileAnchor >> sourceText [
	| start |
	self sourcesAreReadable ifFalse: [ ^ '' ].
	
	start := startPos ifNil: [ 1 ].
	
	^ self fileReference
		binaryReadStreamDo: [ :in | 
			| stream |
			stream := ZnCharacterReadStream on: in encoding: self encoding.
			1 to: start - 1 do: [ :i | stream next ].
			stream next: (endPos ifNil: [ in size + 1 ]) - start + 1 ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaIndexedFileAnchor >> startPos [
	<MSEProperty: #startPos type: #Number>
	<MSEComment: 'Start position in the source'>
	^ startPos
]

{ #category : #'as yet unclassified' }
FmxNGJavaIndexedFileAnchor >> startPos: aNumber [
	startPos := aNumber
]
