Class {
	#name : #FAMIXIndexedFileAnchor,
	#superclass : #FAMIXAbstractFileAnchor,
	#traits : 'FmxNGTIndexedFileNavigation',
	#classTraits : 'FmxNGTIndexedFileNavigation classTrait',
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
	'FAMIXIndexedFileAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FAMIXIndexedFileAnchor class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTIndexedFileNavigation)
]

{ #category : #meta }
FAMIXIndexedFileAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FAMIXIndexedFileAnchor >> lineCount [

	^ self lineCountFromFileReference: self fileReference
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
