Trait {
	#name : #FmxNGTIndexedFileNavigation,
	#instVars : [
		'endPos',
		'startPos'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTIndexedFileNavigation classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TIndexedFileNavigation super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTIndexedFileNavigation classSide >> generatedSlotNames [
	<generated>
	'FmxNGTIndexedFileNavigation class>>#generatedSlotNames'.
	^ #(endPos startPos)
]

{ #category : #generator }
FmxNGTIndexedFileNavigation classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #private }
FmxNGTIndexedFileNavigation >> countNumberOfLinesRuturnsFrom: aStream from: start to: end [
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

{ #category : #accessing }
FmxNGTIndexedFileNavigation >> endPos [

	<MSEProperty: #endPos type: #Number>
	<generated>
	<MSEComment: 'Stop position in the source'>
	^ endPos
]

{ #category : #accessing }
FmxNGTIndexedFileNavigation >> endPos: anObject [

	<generated>
	endPos := anObject

]

{ #category : #accessing }
FmxNGTIndexedFileNavigation >> intervalAsCharPos [
	^ self startPos to: self endPos
]

{ #category : #private }
FmxNGTIndexedFileNavigation >> lineCountFromFileReference: file [

	^ file exists
		ifTrue: [ file
				binaryReadStreamDo: [ :in | 
					| stream |
					stream := ZnCharacterReadStream on: in encoding: self encoding.
					self countNumberOfLinesRuturnsFrom: stream from: (startPos ifNil: [ 1 ]) to: (self endPos ifNil: [ in size ]) ] ]
		ifFalse: [ super lineCount ]
]

{ #category : #accessing }
FmxNGTIndexedFileNavigation >> startPos [

	<MSEProperty: #startPos type: #Number>
	<generated>
	<MSEComment: 'Start position in the source'>
	^ startPos
]

{ #category : #accessing }
FmxNGTIndexedFileNavigation >> startPos: anObject [

	<generated>
	startPos := anObject

]
