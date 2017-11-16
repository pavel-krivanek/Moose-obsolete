"
Description
--------------------

For now I am a simple class to read the source text of a FAMIXFileAnchor. Maybe later I will do more.
"
Class {
	#name : #FAMIXFileAnchorReader,
	#superclass : #Object,
	#instVars : [
		'readStream',
		'writeStream',
		'lineCount',
		'fileAnchor',
		'char',
		'startLine'
	],
	#category : 'Famix-SourceAnchor'
}

{ #category : #reading }
FAMIXFileAnchorReader class >> readStream: aReadStream for: aFAMIXFileAnchor into: aWriteStream [
	^ self new
		readStream: aReadStream;
		writeStream: aWriteStream;
		fileAnchor: aFAMIXFileAnchor;
		read
]

{ #category : #accessing }
FAMIXFileAnchorReader >> fileAnchor: anObject [
	fileAnchor := anObject
]

{ #category : #reading }
FAMIXFileAnchorReader >> increment [
	lineCount := lineCount + 1
]

{ #category : #initialization }
FAMIXFileAnchorReader >> initialize [
	super initialize.
	lineCount := 1
]

{ #category : #reading }
FAMIXFileAnchorReader >> manageNewLineReturnBeforeStartFromCr: aBoolean [
	self increment.
	lineCount = self startLine ifFalse: [ ^ self ].
	
	aBoolean
		ifTrue: [ "For CRLF" self skipNextIfLf ].
	self readUntilStartColumn
]

{ #category : #reading }
FAMIXFileAnchorReader >> read [
	self readUntilStart.
	fileAnchor endLine ifNil: [ writeStream nextPutAll: readStream upToEnd ] ifNotNil: [ :endLine | self readUntil: endLine ]
]

{ #category : #accessing }
FAMIXFileAnchorReader >> readStream: anObject [
	readStream := anObject
]

{ #category : #reading }
FAMIXFileAnchorReader >> readUntil: endLine [
	[ lineCount < endLine ]
		whileTrue: [ (char := readStream next) isCr
				ifTrue: [ self increment.
					writeStream nextPut: char.
					(char := readStream next)
						ifNotNil: [ char isLf
								ifTrue: [ writeStream nextPut: char ]
								ifFalse: [ readStream oneBack ] ] ]
				ifFalse: [ char isLf
						ifTrue: [ self increment ].
					writeStream nextPut: char ] ].
	self readUntilEndColumn
]

{ #category : #reading }
FAMIXFileAnchorReader >> readUntilEndColumn [
	fileAnchor endColumn
		ifNil: [ readStream next
				ifNotNil: [ readStream oneBack.
					[ (char := readStream next) isCr or: [ char isLf ] ] whileFalse: [ writeStream nextPut: char ] ] ]
		ifNotNil: [ :ec | 
			| numberOfCharToRead |
			numberOfCharToRead := self startLine = fileAnchor endLine
				ifTrue: [ ec - (fileAnchor startColumn ifNil: [ 1 ]) ]
				ifFalse: [ ec - 1 ].
			writeStream nextPutAll: (readStream next: numberOfCharToRead) ]
]

{ #category : #reading }
FAMIXFileAnchorReader >> readUntilStart [
	[ lineCount < self startLine ]
		whileTrue: [ (char := readStream next) isCr
				ifTrue: [ self manageNewLineReturnBeforeStartFromCr: true.
					(char := readStream next) isLf
						ifFalse: [ readStream oneBack ] ]
				ifFalse: [ char isLf
						ifTrue: [ self manageNewLineReturnBeforeStartFromCr: false ] ] ]
]

{ #category : #reading }
FAMIXFileAnchorReader >> readUntilStartColumn [
	readStream skip: (fileAnchor startColumn ifNil: [ 1 ]) - 1
]

{ #category : #reading }
FAMIXFileAnchorReader >> skipNextIfLf [
	"I will probably be called after a CR to remove a possible CRLF"

	(char := readStream next) isLf
		ifFalse: [ readStream oneBack ]
]

{ #category : #accessing }
FAMIXFileAnchorReader >> startLine [
	^ startLine ifNil: [ startLine := fileAnchor startLine ifNil: [ 1 ] ]
]

{ #category : #accessing }
FAMIXFileAnchorReader >> writeStream: anObject [
	writeStream := anObject
]
