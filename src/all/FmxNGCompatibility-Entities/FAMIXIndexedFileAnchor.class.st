Class {
	#name : #FAMIXIndexedFileAnchor,
	#superclass : #FAMIXAbstractFileAnchor,
	#instVars : [
		'endPos',
		'startPos'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXIndexedFileAnchor class >> annotation [

	<generated>
	<MSEClass: #IndexedFileAnchor super: #FAMIXAbstractFileAnchor>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #'instance creation' }
FAMIXIndexedFileAnchor class >> fileName: aString startPos: anInteger endPos: anotherInteger [
	^ self
		fileName: aString
		startPos: anInteger
		endPos: anotherInteger
		model: nil
]

{ #category : #'instance creation' }
FAMIXIndexedFileAnchor class >> fileName: aString startPos: anInteger endPos: anotherInteger model: aMooseModel [
	^ self new
		mooseModel: aMooseModel;
		fileName: aString;
		startPos: anInteger;
		endPos: anotherInteger;
		yourself
]

{ #category : #generator }
FAMIXIndexedFileAnchor class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXIndexedFileAnchor class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FAMIXIndexedFileAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #private }
FAMIXIndexedFileAnchor >> countNumberOfLinesRuturnsFrom: aStream from: start to: end [
	"Here is a speedup version of the #lineCount method for the IndexedFileAnchors.
	If we have the file of the entity, instead of reading the full file we can jump directly to the startPos in the stream of the file and read the characters until the endPos. 
	If it is a cr we increment a counter and we ignore a potential lf to manage crlf. If this is a lf, we increment."

	| count char |
	count := 1.
	"Go to the start position in the stream"
	1 to: start - 1 do: [ :i | aStream next ].
	[ aStream position < end ]
		whileTrue: [ (char := aStream next) isCr
				ifTrue: [ "We increment the counter if it is a CR and we ignore a potential LF to manage CRLF"
					count := count + 1.
					(char := aStream next) isLf
						ifFalse: [ aStream skip: -1 ] ]
				ifFalse: [ char isLf
						ifTrue: [ "Since we manage CRLF before we can just increment the counter" count := count + 1 ] ] ].
	^ count
]

{ #category : #accessing }
FAMIXIndexedFileAnchor >> endPos [
	<MSEProperty: #endPos type: #Number>
	<MSEComment: 'Stop position in the source'>
	^ endPos
]

{ #category : #accessing }
FAMIXIndexedFileAnchor >> endPos: aNumber [
	endPos := aNumber
]

{ #category : #'Moose-Finder' }
FAMIXIndexedFileAnchor >> intervalAsCharPos [
	^ self startPos to: self endPos
]

{ #category : #accessing }
FAMIXIndexedFileAnchor >> lineCount [
	| file |
	^ (file := self fileReference) exists
		ifTrue: [ file
				binaryReadStreamDo: [ :in | 
					| stream |
					stream := ZnCharacterReadStream on: in encoding: self encoding.
					self countNumberOfLinesRuturnsFrom: stream from: (startPos ifNil: [ 1 ]) to: (self endPos ifNil: [ in size ]) ] ]
		ifFalse: [ super lineCount ]
]

{ #category : #accessing }
FAMIXIndexedFileAnchor >> mooseNameOn: aStream [
	super mooseNameOn: aStream.
	aStream
		nextPut: $(;
		nextPut: $(;
		nextPutAll: self startPos asString;
		nextPut: $-;
		nextPutAll: self endPos asString;
		nextPut: $).

]

{ #category : #accessing }
FAMIXIndexedFileAnchor >> sourceText [
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

{ #category : #accessing }
FAMIXIndexedFileAnchor >> startPos [
	<MSEProperty: #startPos type: #Number>
	<MSEComment: 'Start position in the source'>
	^ startPos
]

{ #category : #accessing }
FAMIXIndexedFileAnchor >> startPos: aNumber [
	startPos := aNumber
]
