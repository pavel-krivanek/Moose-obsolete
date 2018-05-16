Class {
	#name : #FmxNGFileAnchor,
	#superclass : #FmxNGAbstractFileAnchor,
	#instVars : [
		'endColumn',
		'endLine',
		'startColumn',
		'startLine'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGFileAnchor class >> annotation [

	<generated>
	<MSEClass: #FileAnchor super: #FmxNGAbstractFileAnchor>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGFileAnchor class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGFileAnchor class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGFileAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxNGFileAnchor >> endColumn [
	<MSEProperty: #endColumn type: #Number>
	<MSEComment: 'Number of the end column'>
	^ endColumn
]

{ #category : #accessing }
FmxNGFileAnchor >> endColumn: anObject [
	endColumn := anObject
]

{ #category : #accessing }
FmxNGFileAnchor >> endLine [
	<MSEProperty: #endLine type: #Number>
	<MSEComment: 'Number of the end line'>
	^ endLine
]

{ #category : #accessing }
FmxNGFileAnchor >> endLine: anObject [
	endLine := anObject
]

{ #category : #accessing }
FmxNGFileAnchor >> includeLine: anInteger [
	^ anInteger between: startLine and: endLine
]

{ #category : #accessing }
FmxNGFileAnchor >> interval [
	| start end index |
	index := 0.
	start := 1.
	end := 0.
	self completeText lineIndicesDo: [:lineStart :lineEnd :y | 
		index := index + 1.
		self startLine = index ifTrue: [ start := lineStart ].
		self endLine = index ifTrue: [end := lineEnd ] ].
	^ start to: end
]

{ #category : #'Moose-Finder' }
FmxNGFileAnchor >> intervalAsCharPos [
	| start end index |
	index := 0.
	start := 1.
	end := 0.
	self completeText lineIndicesDo: [:lineStart :lineEnd :y | 
		index := index + 1.
		self startLine = index ifTrue: [ start := lineStart ].
		self endLine = index ifTrue: [end := lineEnd ] ].
	^ start to: end
]

{ #category : #accessing }
FmxNGFileAnchor >> lineCount [
	(endLine notNil and: [ startLine notNil ])
		ifTrue: [ ^ endLine - startLine + 1 ].

	"if no start/end position, use the comple text ..."
	^ self hasSourceText 
		ifTrue: [ self completeText lineCount ]
		ifFalse: [ self notExistentMetricValue ]
	
]

{ #category : #printing }
FmxNGFileAnchor >> mooseNameOn: aStream [
	super mooseNameOn: aStream.
	aStream
		nextPut: $(;
		nextPutAll: self startLine asString;
		nextPut: $@;
		nextPutAll: self startColumn asString;
		nextPut: $-;
		nextPutAll: self endLine asString;
		nextPut: $@;
		nextPutAll: self endColumn asString;
		nextPut: $).

]

{ #category : #accessing }
FmxNGFileAnchor >> sourceText [
	(self startLine isNil and: [ self endLine isNil ]) ifTrue: [ ^ self completeText ].
	
	self sourcesAreReadable ifFalse: [ ^ '' ].
	
	^ self fileReference
		binaryReadStreamDo: [ :in | 
			String
				streamContents: [ :s | 
					[ FAMIXFileAnchorReader readStream: ((ZnCharacterReadStream on: (ZnBufferedReadStream on: in) encoding: self encoding)) for: self into: s ]
						on: MessageNotUnderstood
						do: [ self endLine: nil.
							s ] ] ]
]

{ #category : #accessing }
FmxNGFileAnchor >> startColumn [
	<MSEProperty: #startColumn type: #Number>
	<MSEComment: 'Number of the start column'>
	^ startColumn
]

{ #category : #accessing }
FmxNGFileAnchor >> startColumn: anObject [
	startColumn := anObject
]

{ #category : #accessing }
FmxNGFileAnchor >> startLine [
	<MSEProperty: #startLine type: #Number>
	<MSEComment: 'Number of the start line'>
	^ startLine
]

{ #category : #accessing }
FmxNGFileAnchor >> startLine: anObject [
	startLine := anObject
]
