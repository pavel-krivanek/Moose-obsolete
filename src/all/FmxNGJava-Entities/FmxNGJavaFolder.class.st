Class {
	#name : #FmxNGJavaFolder,
	#superclass : #FmxNGJavaAbstractFile,
	#traits : 'FmxNGTFolder',
	#classTraits : 'FmxNGTFolder classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaFolder class >> annotation [

	<generated>
	<MSEClass: #Folder super: #FmxNGJavaAbstractFile>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaFolder class >> generatedSlotNames [
	<generated>
	'FmxNGJavaFolder class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaFolder class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTFolder)
]

{ #category : #meta }
FmxNGJavaFolder class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaFolder >> addChildFileSystemEntity: aFileOrFolder [
	self childrenFileSystemEntities add: aFileOrFolder
]

{ #category : #'as yet unclassified' }
FmxNGJavaFolder >> allRecursiveFiles [
	| result |
	result := MooseGroup withAll: self files withDescription: 'All recursive files in ', self mooseName.
	self folders do: [:each | result := result addAll: each allRecursiveFiles].
	^result.
]

{ #category : #'as yet unclassified' }
FmxNGJavaFolder >> allRecursiveFolders [
	| result |
	result := MooseGroup withAll: self folders withDescription: 'All recursive folders in ', self mooseName.
	self folders do: [:each | result := result addAll: each allRecursiveFolders].
	^result.
]

{ #category : #'as yet unclassified' }
FmxNGJavaFolder >> files [
	^ self childrenFileSystemEntities reject: #isFolder
]

{ #category : #'as yet unclassified' }
FmxNGJavaFolder >> filesGroup [
	<navigation: 'Files'>
	^FAMIXFileGroup withAll: self files withDescription: 'Files'
]

{ #category : #'as yet unclassified' }
FmxNGJavaFolder >> folders [
	^ self childrenFileSystemEntities select: #isFolder
]

{ #category : #'as yet unclassified' }
FmxNGJavaFolder >> foldersGroup [
	<navigation: 'Folders'>
	^FAMIXFolderGroup withAll: self folders withDescription: 'Folders'
]

{ #category : #'as yet unclassified' }
FmxNGJavaFolder >> isFolder [
	^ true
]

{ #category : #'as yet unclassified' }
FmxNGJavaFolder >> numberOfEmptyLinesOfText [
	<MSEProperty: #numberOfEmptyLinesOfText type: #Number>
	<MSEComment: 'Number of empty lines of text'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfEmptyLinesOfText computedAs: [ 
		self files, self folders sumNumbers: #numberOfEmptyLinesOfText
	]
]

{ #category : #'as yet unclassified' }
FmxNGJavaFolder >> numberOfFiles [
	<MSEProperty: #numberOfFiles type: #Number>
	<MSEComment: 'The number of files in a folder'>
	<derived>
	^self
		lookUpPropertyNamed: #numberOfFiles
		computedAs: [self files size]
]

{ #category : #'as yet unclassified' }
FmxNGJavaFolder >> numberOfFolders [
	<MSEProperty: #numberOfFolders type: #Number>
	<MSEComment: 'The number of folders in a folder'>
	<derived>
	^self
		lookUpPropertyNamed: #numberOfFolders
		computedAs: [self folders size]
]

{ #category : #'as yet unclassified' }
FmxNGJavaFolder >> totalNumberOfLinesOfText [
	<MSEProperty: #totalNumberOfLinesOfText type: #Number>
	<MSEComment: 'Number of lines of text'>
	<derived>
	^ self
		lookUpPropertyNamed: #totalNumberOfLinesOfText
		computedAs: [ self files , self folders sumNumbers: #totalNumberOfLinesOfText ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaFolder >> withAllRecursiveFolders [
	| result |
	result := MooseGroup with: self withDescription: 'All recursive folders in ', self mooseName.
	result addAll: self folders.
	self folders do: [:each | result := result addAll: each allRecursiveFolders].
	^result.
]
