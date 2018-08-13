Class {
	#name : #FmxNGJavaFileAnchor,
	#superclass : #FmxNGJavaAbstractFileAnchor,
	#traits : 'FmxNGTFileNavigation',
	#classTraits : 'FmxNGTFileNavigation classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaFileAnchor class >> annotation [

	<MSEClass: #FileAnchor super: #FmxNGJavaAbstractFileAnchor>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaFileAnchor class >> generatedSlotNames [
	<generated>
	'FmxNGJavaFileAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaFileAnchor class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTFileNavigation)
]

{ #category : #meta }
FmxNGJavaFileAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxNGJavaFileAnchor >> mooseNameOn: aStream [
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
FmxNGJavaFileAnchor >> sourceText [
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
