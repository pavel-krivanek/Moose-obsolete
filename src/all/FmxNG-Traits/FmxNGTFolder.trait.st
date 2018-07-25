"
It represents a folder in the file system. It can contain other files or folders.
"
Trait {
	#name : #FmxNGTFolder,
	#instVars : [
		'#childrenFileSystemEntities => FMMany type: #FmxNGTFileSystemEntity opposite: #parentFolder'
	],
	#category : #'FmxNG-Traits-File'
}

{ #category : #meta }
FmxNGTFolder classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TFolder super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTFolder classSide >> generatedSlotNames [
	<generated>
	'FmxNGTFolder class>>#generatedSlotNames'.
	^ #(childrenFileSystemEntities)
]

{ #category : #generator }
FmxNGTFolder classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #adding }
FmxNGTFolder >> addChildFileSystemEntity: aFileOrFolder [
	self childrenFileSystemEntities add: aFileOrFolder
]

{ #category : #properties }
FmxNGTFolder >> allRecursiveFiles [
	| result |
	result := MooseGroup withAll: self files withDescription: 'All recursive files in ', self mooseName.
	self folders do: [:each | result := result addAll: each allRecursiveFiles].
	^result.
]

{ #category : #properties }
FmxNGTFolder >> allRecursiveFolders [
	| result |
	result := MooseGroup withAll: self folders withDescription: 'All recursive folders in ', self mooseName.
	self folders do: [:each | result := result addAll: each allRecursiveFolders].
	^result.
]

{ #category : #accessing }
FmxNGTFolder >> childrenFileSystemEntities [

	<generated>
	<MSEComment: 'List of entities contained in this folder.'>
	^ childrenFileSystemEntities
]

{ #category : #accessing }
FmxNGTFolder >> childrenFileSystemEntities: anObject [

	<generated>
	childrenFileSystemEntities value: anObject

]

{ #category : #adding }
FmxNGTFolder >> files [
	^ self childrenFileSystemEntities reject: #isFolder
]

{ #category : #adding }
FmxNGTFolder >> filesGroup [
	<navigation: 'Files'>
	^FAMIXFileGroup withAll: self files withDescription: 'Files'
]

{ #category : #adding }
FmxNGTFolder >> folders [
	^ self childrenFileSystemEntities select: #isFolder
]

{ #category : #adding }
FmxNGTFolder >> foldersGroup [
	<navigation: 'Folders'>
	^FAMIXFolderGroup withAll: self folders withDescription: 'Folders'
]

{ #category : #properties }
FmxNGTFolder >> numberOfEmptyLinesOfText [
	<MSEProperty: #numberOfEmptyLinesOfText type: #Number>
	<MSEComment: 'Number of empty lines of text'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfEmptyLinesOfText computedAs: [ 
		self files, self folders sumNumbers: #numberOfEmptyLinesOfText
	]
]

{ #category : #properties }
FmxNGTFolder >> numberOfFiles [
	<MSEProperty: #numberOfFiles type: #Number>
	<MSEComment: 'The number of files in a folder'>
	<derived>
	^self
		lookUpPropertyNamed: #numberOfFiles
		computedAs: [self files size]
]

{ #category : #properties }
FmxNGTFolder >> numberOfFolders [
	<MSEProperty: #numberOfFolders type: #Number>
	<MSEComment: 'The number of folders in a folder'>
	<derived>
	^self
		lookUpPropertyNamed: #numberOfFolders
		computedAs: [self folders size]
]

{ #category : #properties }
FmxNGTFolder >> totalNumberOfLinesOfText [
	<MSEProperty: #totalNumberOfLinesOfText type: #Number>
	<MSEComment: 'Number of lines of text'>
	<derived>
	^ self
		lookUpPropertyNamed: #totalNumberOfLinesOfText
		computedAs: [ self files , self folders sumNumbers: #totalNumberOfLinesOfText ]
]

{ #category : #properties }
FmxNGTFolder >> withAllRecursiveFolders [
	| result |
	result := MooseGroup with: self withDescription: 'All recursive folders in ', self mooseName.
	result addAll: self folders.
	self folders do: [:each | result := result addAll: each allRecursiveFolders].
	^result.
]
