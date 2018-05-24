Class {
	#name : #FAMIXAbstractFileAnchor,
	#superclass : #FAMIXSourceAnchor,
	#traits : 'FmxNGTFileAnchor',
	#classTraits : 'FmxNGTFileAnchor classTrait',
	#instVars : [
		'encoding',
		'fileName'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXAbstractFileAnchor class >> annotation [

	<generated>
	<MSEClass: #AbstractFileAnchor super: #FAMIXSourceAnchor>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #generator }
FAMIXAbstractFileAnchor class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXAbstractFileAnchor class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTFileAnchor)
]

{ #category : #meta }
FAMIXAbstractFileAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-File' }
FAMIXAbstractFileAnchor >> <= aFileAnchor [
	^ self fileName <= aFileAnchor fileName
]

{ #category : #'Famix-File' }
FAMIXAbstractFileAnchor >> addToFile: entity [
	^ self correspondingFile addEntity: entity
]

{ #category : #accessing }
FAMIXAbstractFileAnchor >> completeText [
	self sourcesAreReadable ifFalse: [ ^ '' ].
	
	^ self fileReference
		binaryReadStreamDo:
			[ :in | (ZnCharacterReadStream on: in encoding: self encoding) upToEnd ]
]

{ #category : #'Famix-File' }
FAMIXAbstractFileAnchor >> containerFiles [
	^ self correspondingFile ifNil: [ {} ] ifNotNil: [ :file | {file} ]
]

{ #category : #'Famix-File' }
FAMIXAbstractFileAnchor >> correspondingFile [
	"file pointed to by this source anchor, ideally this value should never be nil for file-based systems"
	<MSEProperty: #correspondingFile type: #FAMIXFile>
	<MSEComment: 'File associated to this source anchor'>
	^ self privateState attributeAt: #correspondingFile ifAbsent: [ nil ]
]

{ #category : #'Famix-File' }
FAMIXAbstractFileAnchor >> correspondingFile: aFAMIXFile [
	self privateState attributeAt: #correspondingFile put: aFAMIXFile
]

{ #category : #encoding }
FAMIXAbstractFileAnchor >> detectEncoding [
	self fileReference exists
		ifFalse: [ ^ nil ].
	^ [ self fileReference binaryReadStreamDo: [ :in | (ZnCharacterEncoder detectEncoding: in upToEnd) identifier ] ]
		on: ZnCharacterEncodingError
		do: [ nil ]
]

{ #category : #accessing }
FAMIXAbstractFileAnchor >> encoding [
	<MSEProperty: #encoding type: #String>
	<MSEComment: 'A string representing the encoding of a file'>
	^ encoding ifNil: [ encoding := self detectEncoding ]
]

{ #category : #accessing }
FAMIXAbstractFileAnchor >> fileName: aFileName [
	fileName := aFileName copyReplaceAll: '\' with: '/'. 
]

{ #category : #accessing }
FAMIXAbstractFileAnchor >> fileReference [
	^ self rootFolder asFileReference resolve: self fileName
]

{ #category : #testing }
FAMIXAbstractFileAnchor >> hasSourceText [
	^ self completeText notEmpty 
]

{ #category : #'Moose-Finder' }
FAMIXAbstractFileAnchor >> intervalAsCharPos [
	self subclassResponsibility
]

{ #category : #testing }
FAMIXAbstractFileAnchor >> isFile [
	^ true
]

{ #category : #accessing }
FAMIXAbstractFileAnchor >> lineCount [
	^ self hasSourceText 
		ifTrue: [ self sourceText lineCount ]
		ifFalse: [ self notExistentMetricValue ]
	
]

{ #category : #printing }
FAMIXAbstractFileAnchor >> mooseNameOn: aStream [
	aStream nextPutAll: self fileName asString
]

{ #category : #private }
FAMIXAbstractFileAnchor >> privateHasEncoding [
	^ encoding isNotNil
]

{ #category : #accessing }
FAMIXAbstractFileAnchor >> rootFolder [
	^ self mooseModel rootFolder
]

{ #category : #'Famix-File' }
FAMIXAbstractFileAnchor >> setCorrespondingFile [
	"files have already been added to the model"
	^ self mooseModel allFiles asOrderedCollection
		detect: [ :file | file mooseName = self fileName ]
		ifFound: [ :aFile | self correspondingFile: aFile ]
]

{ #category : #accessing }
FAMIXAbstractFileAnchor >> sourceText [
	self subclassResponsibility
]

{ #category : #testing }
FAMIXAbstractFileAnchor >> sourcesAreReadable [
	| file |
	^ (file := self fileReference) exists and: [ file size > 0 ]
]
