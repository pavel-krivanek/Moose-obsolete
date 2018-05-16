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

{ #category : #meta }
FmxNGAbstractFile class >> requirements [

	<generated>
	^ {  }
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
