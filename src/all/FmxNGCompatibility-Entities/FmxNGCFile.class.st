Class {
	#name : #FmxNGCFile,
	#superclass : #FmxNGFile,
	#traits : 'FmxNGTWithFileInclude',
	#classTraits : 'FmxNGTWithFileInclude classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGCFile class >> annotation [

	<generated>
	<MSEClass: #CFile super: #FmxNGFile>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGCFile class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGCFile class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTWithFileInclude)
]

{ #category : #meta }
FmxNGCFile class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxNGCFile >> allIncomingIncludeRelations [
	| answer |
	answer := OrderedCollection new.
	self allIncomingIncludeRelations: answer.
	^ answer
]

{ #category : #accessing }
FmxNGCFile >> allIncomingIncludeRelations: visitedPath [
	(self incomingIncludeRelations collect: #source) do: [ :f |
		(visitedPath includes: f) ifFalse: [ 
			visitedPath add: f.
			f allIncomingIncludeRelations: visitedPath
		]
	]
]

{ #category : #accessing }
FmxNGCFile >> includedFiles [
	<MSEProperty: #includedFiles type: #FmxNGCFile> <multivalued> <derived>
	<MSEComment: 'Files included by this file.'>

	^ outgoingIncludeRelations collect: [ :each | each target ]
]

{ #category : #accessing }
FmxNGCFile >> includingFiles [
	<MSEProperty: #includingFiles type: #FmxNGCFile> <multivalued> <derived>
	<MSEComment: 'Files that include this file.'>

	^ incomingIncludeRelations collect: [ :each | each source ]
]

{ #category : #testing }
FmxNGCFile >> isCompilationUnit [
	^ false
]

{ #category : #testing }
FmxNGCFile >> isHeader [
	^ false
]

{ #category : #queries }
FmxNGCFile >> numberOfIncludes [
	"Return the number of files I include"
	^ outgoingIncludeRelations size
]
