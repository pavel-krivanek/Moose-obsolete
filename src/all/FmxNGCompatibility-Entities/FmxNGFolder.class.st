Class {
	#name : #FmxNGFolder,
	#superclass : #FmxNGAbstractFile,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGFolder class >> annotation [

	<generated>
	<MSEClass: #Folder super: #FmxNGAbstractFile>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGFolder class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGFolder class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGFolder class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'add/remove' }
FmxNGFolder >> addChildFileSystemEntity: aFileOrFolder [
	self childrenFileSystemEntities add: aFileOrFolder
]

{ #category : #'computed accessing' }
FmxNGFolder >> allRecursiveFiles [
	| result |
	result := MooseGroup withAll: self files withDescription: 'All recursive files in ', self mooseName.
	self folders do: [:each | result := result addAll: each allRecursiveFiles].
	^result.
]

{ #category : #'computed accessing' }
FmxNGFolder >> allRecursiveFolders [
	| result |
	result := MooseGroup withAll: self folders withDescription: 'All recursive folders in ', self mooseName.
	self folders do: [:each | result := result addAll: each allRecursiveFolders].
	^result.
]

{ #category : #accessing }
FmxNGFolder >> childrenFileSystemEntities [
	<MSEProperty: #childrenFileSystemEntities type: #FmxNGAbstractFile opposite: #parentFolder>
	<multivalued>
	<derived>
	<MSEComment: 'List of entities contained in this package.'>
	^ self privateState
		attributeAt: #childrenFileSystemEntities
		ifAbsentPut: [ FMMultivalueLink on: self opposite: #parentFolder: ]
]

{ #category : #accessing }
FmxNGFolder >> childrenFileSystemEntities: aFAMIXAbstractFile [
	self childrenFileSystemEntities value: aFAMIXAbstractFile
]

{ #category : #accessing }
FmxNGFolder >> files [
	^ self childrenFileSystemEntities reject: #isFolder
]

{ #category : #accessing }
FmxNGFolder >> filesGroup [
	<navigation: 'Files'>
	^FAMIXFileGroup withAll: self files withDescription: 'Files'
]

{ #category : #accessing }
FmxNGFolder >> folders [
	^ self childrenFileSystemEntities select: #isFolder
]

{ #category : #accessing }
FmxNGFolder >> foldersGroup [
	<navigation: 'Folders'>
	^FAMIXFolderGroup withAll: self folders withDescription: 'Folders'
]

{ #category : #testing }
FmxNGFolder >> isFolder [
	^ true
]

{ #category : #properties }
FmxNGFolder >> numberOfEmptyLinesOfText [
	<MSEProperty: #numberOfEmptyLinesOfText type: #Number>
	<MSEComment: 'Number of empty lines of text'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfEmptyLinesOfText computedAs: [ 
		self files, self folders sumNumbers: #numberOfEmptyLinesOfText
	]
]

{ #category : #properties }
FmxNGFolder >> numberOfFiles [
	<MSEProperty: #numberOfFiles type: #Number>
	<MSEComment: 'The number of files in a folder'>
	<derived>
	^self
		lookUpPropertyNamed: #numberOfFiles
		computedAs: [self files size]
]

{ #category : #properties }
FmxNGFolder >> numberOfFolders [
	<MSEProperty: #numberOfFolders type: #Number>
	<MSEComment: 'The number of folders in a folder'>
	<derived>
	^self
		lookUpPropertyNamed: #numberOfFolders
		computedAs: [self folders size]
]

{ #category : #properties }
FmxNGFolder >> totalNumberOfLinesOfText [
	<MSEProperty: #totalNumberOfLinesOfText type: #Number>
	<MSEComment: 'Number of lines of text'>
	<derived>
	^ self
		lookUpPropertyNamed: #totalNumberOfLinesOfText
		computedAs: [ self files , self folders sumNumbers: #totalNumberOfLinesOfText ]
]

{ #category : #'computed accessing' }
FmxNGFolder >> withAllRecursiveFolders [
	| result |
	result := MooseGroup with: self withDescription: 'All recursive folders in ', self mooseName.
	result addAll: self folders.
	self folders do: [:each | result := result addAll: each allRecursiveFolders].
	^result.
]
