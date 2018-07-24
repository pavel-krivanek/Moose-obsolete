Class {
	#name : #FAMIXFileAnchor,
	#superclass : #FAMIXAbstractFileAnchor,
	#traits : 'FmxNGTFileNavigation',
	#classTraits : 'FmxNGTFileNavigation classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXFileAnchor class >> annotation [

	<generated>
	<MSEClass: #FileAnchor super: #FAMIXAbstractFileAnchor>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #'instance creation' }
FAMIXFileAnchor class >> fileName: aString startLine: anInteger startColumn: anInteger2 endLine: anInteger3 endColumn: anInteger4 [
	^ self 
		fileName: aString
		startLine: anInteger
		startColumn: anInteger2
		endLine: anInteger3
		endColumn: anInteger4
		model: nil
]

{ #category : #'instance creation' }
FAMIXFileAnchor class >> fileName: aString startLine: anInteger startColumn: anInteger2 endLine: anInteger3 endColumn: anInteger4 model: aMooseModel [
	^ self new
		mooseModel: aMooseModel;
		fileName: aString;
		startLine: anInteger;
		startColumn: anInteger2;
		endLine: anInteger3;
		endColumn: anInteger4;
		yourself
]

{ #category : #generator }
FAMIXFileAnchor class >> generatedSlotNames [
	<generated>
	'FAMIXFileAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FAMIXFileAnchor class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTFileNavigation)
]

{ #category : #meta }
FAMIXFileAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FAMIXFileAnchor >> mooseNameOn: aStream [
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
FAMIXFileAnchor >> sourceText [
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
