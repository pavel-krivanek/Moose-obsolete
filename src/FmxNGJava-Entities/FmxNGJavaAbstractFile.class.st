Class {
	#name : #FmxNGJavaAbstractFile,
	#superclass : #FmxNGJavaNamedEntity,
	#traits : 'FmxNGTFileSystemEntity',
	#classTraits : 'FmxNGTFileSystemEntity classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaAbstractFile class >> annotation [

	<MSEClass: #AbstractFile super: #FmxNGJavaNamedEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaAbstractFile class >> generatedSlotNames [
	<generated>
	'FmxNGJavaAbstractFile class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaAbstractFile class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTFileSystemEntity)
]

{ #category : #meta }
FmxNGJavaAbstractFile class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFile >> belongsTo [
	<navigation: 'parent folder'>
	^ self parentFolder
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFile >> fileReference [ 
	^ (FileSystem disk referenceTo: (self mooseName copyReplaceAll: self class famixFolderSeparatorString with: FileSystem disk delimiter asString))
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFile >> fullName [
	^ self mooseName
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFile >> ifFolder: aBlock [
	^ self isFolder ifTrue: [ aBlock value ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFile >> ifFolder: aBlock1 ifNotFolder: aBlock2 [
	^ self isFolder ifTrue: [ aBlock1 value ] ifFalse: [ aBlock2 value ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFile >> ifNotFolder: aBlock [
	^ self isFolder ifFalse: [ aBlock value ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFile >> ifNotFolder: aBlock1 ifFolder: aBlock2 [
	^ self isFolder ifFalse: [ aBlock1 value ] ifTrue: [ aBlock2 value ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFile >> isRoot [
	^ self belongsTo isNil
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFile >> mooseNameOn: aStream [
	self belongsTo
		ifNotNil: [ :parent | 
			parent mooseNameOn: aStream.
			aStream nextPutAll: self class famixFolderSeparatorString ].
	self name ifNotNil: [ aStream nextPutAll: self name ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFile >> numberOfEmptyLinesOfText [
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFile >> numberOfLinesOfText [
	<MSEProperty: #numberOfLinesOfText type: #Number>
	<MSEComment: 'Number of lines of text which are not empty in a file'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfLinesOfText computedAs: [ self totalNumberOfLinesOfText - self numberOfEmptyLinesOfText ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFile >> totalNumberOfLinesOfText [
	^ self subclassResponsibility
]
