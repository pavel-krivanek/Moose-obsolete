Class {
	#name : #FAMIXAbstractFile,
	#superclass : #FAMIXNamedEntity,
	#traits : 'FmxNGTFileSystemEntity',
	#classTraits : 'FmxNGTFileSystemEntity classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXAbstractFile class >> annotation [

	<generated>
	<MSEClass: #AbstractFile super: #FAMIXNamedEntity>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #constants }
FAMIXAbstractFile class >> famixFolderSeparatorString [
	^'/'
]

{ #category : #generator }
FAMIXAbstractFile class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXAbstractFile class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTFileSystemEntity)
]

{ #category : #'instance creation' }
FAMIXAbstractFile class >> named: aName filedIn: aFolder [

	^self basicNew
				initialize;
				name: (aName copyReplaceAll: self systemFolderSeparatorString with: self famixFolderSeparatorString) asSymbol;
				parentFolder: aFolder;
				yourself.
]

{ #category : #meta }
FAMIXAbstractFile class >> requirements [

	<generated>
	^ {  }
]

{ #category : #constants }
FAMIXAbstractFile class >> systemFolderSeparatorString [
	^ DiskStore delimiter asString 
]

{ #category : #accessing }
FAMIXAbstractFile >> belongsTo [
	<navigation: 'parent folder'>
	^ self parentFolder
]

{ #category : #accessing }
FAMIXAbstractFile >> fileReference [ 
	^ (FileSystem disk referenceTo: (self mooseName copyReplaceAll: self class famixFolderSeparatorString with: FileSystem disk delimiter asString))
]

{ #category : #accessing }
FAMIXAbstractFile >> fullName [
	^ self mooseName
]

{ #category : #testing }
FAMIXAbstractFile >> ifFolder: aBlock [
	^ self isFolder ifTrue: [ aBlock value ]
]

{ #category : #testing }
FAMIXAbstractFile >> ifFolder: aBlock1 ifNotFolder: aBlock2 [
	^ self isFolder ifTrue: [ aBlock1 value ] ifFalse: [ aBlock2 value ]
]

{ #category : #testing }
FAMIXAbstractFile >> ifNotFolder: aBlock [
	^ self isFolder ifFalse: [ aBlock value ]
]

{ #category : #testing }
FAMIXAbstractFile >> ifNotFolder: aBlock1 ifFolder: aBlock2 [
	^ self isFolder ifFalse: [ aBlock1 value ] ifTrue: [ aBlock2 value ]
]

{ #category : #testing }
FAMIXAbstractFile >> isFolder [
	self subclassResponsibility
]

{ #category : #testing }
FAMIXAbstractFile >> isRoot [
	^ self belongsTo isNil
]

{ #category : #printing }
FAMIXAbstractFile >> mooseNameOn: aStream [
	self belongsTo
		ifNotNil: [ :parent | 
			parent mooseNameOn: aStream.
			aStream nextPutAll: self class famixFolderSeparatorString ].
	self name ifNotNil: [ aStream nextPutAll: self name ]
]

{ #category : #properties }
FAMIXAbstractFile >> numberOfEmptyLinesOfText [
	^ self subclassResponsibility
]

{ #category : #properties }
FAMIXAbstractFile >> numberOfLinesOfText [
	<MSEProperty: #numberOfLinesOfText type: #Number>
	<MSEComment: 'Number of lines of text which are not empty in a file'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfLinesOfText computedAs: [ self totalNumberOfLinesOfText - self numberOfEmptyLinesOfText ]
]

{ #category : #properties }
FAMIXAbstractFile >> totalNumberOfLinesOfText [
	^ self subclassResponsibility
]
