Class {
	#name : #FmxNGJavaIndexedFileAnchor,
	#superclass : #FmxNGJavaAbstractFileAnchor,
	#traits : 'FmxNGTIndexedFileNavigation',
	#classTraits : 'FmxNGTIndexedFileNavigation classTrait',
	#instVars : [
		'endPos',
		'startPos'
	],
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaIndexedFileAnchor class >> annotation [

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
	^ #(FmxNGTIndexedFileNavigation)
]

{ #category : #meta }
FmxNGJavaIndexedFileAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaIndexedFileAnchor >> lineCount [

	^ self lineCountFromFileReference: self fileReference
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
