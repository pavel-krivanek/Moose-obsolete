Class {
	#name : #FmxNGAbstractFile,
	#superclass : #FmxNGNamedEntity,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGAbstractFile class >> annotation [

	<generated>
	<MSEClass: #AbstractFile super: #FmxNGNamedEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #constants }
FmxNGAbstractFile class >> famixFolderSeparatorString [
	^'/'
]

{ #category : #generator }
FmxNGAbstractFile class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGAbstractFile class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #'instance creation' }
FmxNGAbstractFile class >> named: aName filedIn: aFolder [

	^self basicNew
				initialize;
				name: (aName copyReplaceAll: self systemFolderSeparatorString with: self famixFolderSeparatorString) asSymbol;
				parentFolder: aFolder;
				yourself.
]

{ #category : #meta }
FmxNGAbstractFile class >> requirements [

	<generated>
	^ {  }
]

{ #category : #constants }
FmxNGAbstractFile class >> systemFolderSeparatorString [
	^ DiskStore delimiter asString 
]

{ #category : #accessing }
FmxNGAbstractFile >> belongsTo [
	<navigation: 'parent folder'>
	^ self parentFolder
]

{ #category : #accessing }
FmxNGAbstractFile >> fileReference [ 
	^ (FileSystem disk referenceTo: (self mooseName copyReplaceAll: self class famixFolderSeparatorString with: FileSystem disk delimiter asString))
]

{ #category : #accessing }
FmxNGAbstractFile >> fullName [
	^ self mooseName
]

{ #category : #testing }
FmxNGAbstractFile >> ifFolder: aBlock [
	^ self isFolder ifTrue: [ aBlock value ]
]

{ #category : #testing }
FmxNGAbstractFile >> ifFolder: aBlock1 ifNotFolder: aBlock2 [
	^ self isFolder ifTrue: [ aBlock1 value ] ifFalse: [ aBlock2 value ]
]

{ #category : #testing }
FmxNGAbstractFile >> ifNotFolder: aBlock [
	^ self isFolder ifFalse: [ aBlock value ]
]

{ #category : #testing }
FmxNGAbstractFile >> ifNotFolder: aBlock1 ifFolder: aBlock2 [
	^ self isFolder ifFalse: [ aBlock1 value ] ifTrue: [ aBlock2 value ]
]

{ #category : #testing }
FmxNGAbstractFile >> isFolder [
	self subclassResponsibility
]

{ #category : #testing }
FmxNGAbstractFile >> isRoot [
	^ self belongsTo isNil
]

{ #category : #printing }
FmxNGAbstractFile >> mooseNameOn: aStream [
	self belongsTo
		ifNotNil: [ :parent | 
			parent mooseNameOn: aStream.
			aStream nextPutAll: self class famixFolderSeparatorString ].
	self name ifNotNil: [ aStream nextPutAll: self name ]
]

{ #category : #properties }
FmxNGAbstractFile >> numberOfEmptyLinesOfText [
	^ self subclassResponsibility
]

{ #category : #properties }
FmxNGAbstractFile >> numberOfLinesOfText [
	<MSEProperty: #numberOfLinesOfText type: #Number>
	<MSEComment: 'Number of lines of text which are not empty in a file'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfLinesOfText computedAs: [ self totalNumberOfLinesOfText - self numberOfEmptyLinesOfText ]
]

{ #category : #accessing }
FmxNGAbstractFile >> parentFolder [
	"lazy initialization to reduce memory foot print if possible"

	<MSEProperty: #parentFolder type: #FmxNGFolder opposite: #childrenFileSystemEntities>
	<MSEComment: 'folder containing a file'>
	<container>
	^ self privateState attributeAt: #parentFolder ifAbsent: [ nil ]
]

{ #category : #accessing }
FmxNGAbstractFile >> parentFolder: aFolder [
	self privateState
		attributeAt: #parentFolder
		put:
			(FMMultivalueLink
				on: self
				update: #childrenFileSystemEntities
				from: self parentFolder
				to: aFolder).
	self resetMooseName
]

{ #category : #properties }
FmxNGAbstractFile >> totalNumberOfLinesOfText [
	^ self subclassResponsibility
]
