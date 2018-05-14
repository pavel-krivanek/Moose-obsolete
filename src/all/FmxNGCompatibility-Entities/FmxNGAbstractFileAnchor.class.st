Class {
	#name : #FmxNGAbstractFileAnchor,
	#superclass : #FmxNGSourceAnchor,
	#traits : 'FmxNGTFileAnchor',
	#classTraits : 'FmxNGTFileAnchor classTrait',
	#instVars : [
		'fileName',
		'encoding'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGAbstractFileAnchor class >> annotation [

	<generated>
	<MSEClass: #AbstractFileAnchor super: #FmxNGSourceAnchor>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGAbstractFileAnchor class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGAbstractFileAnchor class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTFileAnchor)
]

{ #category : #meta }
FmxNGAbstractFileAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #comparin }
FmxNGAbstractFileAnchor >> <= aFileAnchor [
	^ self fileName <= aFileAnchor fileName
]

{ #category : #'Famix-File' }
FmxNGAbstractFileAnchor >> addToFile: entity [
	^ self correspondingFile addEntity: entity
]

{ #category : #accessing }
FmxNGAbstractFileAnchor >> completeText [
	self sourcesAreReadable ifFalse: [ ^ '' ].
	
	^ self fileReference
		binaryReadStreamDo:
			[ :in | (ZnCharacterReadStream on: in encoding: self encoding) upToEnd ]
]

{ #category : #'Famix-File' }
FmxNGAbstractFileAnchor >> containerFiles [
	^ self correspondingFile ifNil: [ {} ] ifNotNil: [ :file | {file} ]
]

{ #category : #'Famix-File' }
FmxNGAbstractFileAnchor >> correspondingFile [
	"file pointed to by this source anchor, ideally this value should never be nil for file-based systems"
	<MSEProperty: #correspondingFile type: #FAMIXFile>
	<MSEComment: 'File associated to this source anchor'>
	^ self privateState attributeAt: #correspondingFile ifAbsent: [ nil ]
]

{ #category : #'Famix-File' }
FmxNGAbstractFileAnchor >> correspondingFile: aFAMIXFile [
	self privateState attributeAt: #correspondingFile put: aFAMIXFile
]

{ #category : #encoding }
FmxNGAbstractFileAnchor >> detectEncoding [
	self fileReference exists
		ifFalse: [ ^ nil ].
	^ [ self fileReference binaryReadStreamDo: [ :in | (ZnCharacterEncoder detectEncoding: in upToEnd) identifier ] ]
		on: ZnCharacterEncodingError
		do: [ nil ]
]

{ #category : #accessing }
FmxNGAbstractFileAnchor >> encoding [
	<MSEProperty: #encoding type: #String>
	<MSEComment: 'A string representing the encoding of a file'>
	^ encoding ifNil: [ encoding := self detectEncoding ]
]

{ #category : #accessing }
FmxNGAbstractFileAnchor >> fileName: aFileName [
	fileName := aFileName copyReplaceAll: '\' with: '/'. 
]

{ #category : #accessing }
FmxNGAbstractFileAnchor >> fileReference [
	^ self rootFolder asFileReference resolve: self fileName
]

{ #category : #testing }
FmxNGAbstractFileAnchor >> hasSourceText [
	^ self completeText notEmpty 
]

{ #category : #'Moose-Finder' }
FmxNGAbstractFileAnchor >> intervalAsCharPos [
	self subclassResponsibility
]

{ #category : #testing }
FmxNGAbstractFileAnchor >> isFile [
	^ true
]

{ #category : #accessing }
FmxNGAbstractFileAnchor >> lineCount [
	^ self hasSourceText 
		ifTrue: [ self sourceText lineCount ]
		ifFalse: [ self notExistentMetricValue ]
	
]

{ #category : #'Moose-Finder' }
FmxNGAbstractFileAnchor >> mooseFinderCompleteSourceTextIn: composite [
	<moosePresentationOrder: 11>
	composite custom: 
		((MooseFileSourceAnchorViewer startOn: self)
						title: 'Complete source';
						titleIcon: MooseIcons mooseSourceText;
						when: [ :input | input mooseInterestingEntity completeText notEmpty ])
]

{ #category : #'Moose-Finder' }
FmxNGAbstractFileAnchor >> mooseFinderParentDirectoryIn: composite [
	<moosePresentationOrder: 12>
	self fileReference exists ifFalse: [ ^ self ].
	(self fileReference parent gtInspectorItemsIn: composite)
			title: 'Parent directory';
			titleIcon: MooseIcons mooseFolder
]

{ #category : #printing }
FmxNGAbstractFileAnchor >> mooseNameOn: aStream [
	aStream nextPutAll: self fileName asString
]

{ #category : #private }
FmxNGAbstractFileAnchor >> privateHasEncoding [
	^ encoding isNotNil
]

{ #category : #accessing }
FmxNGAbstractFileAnchor >> rootFolder [
	^ self mooseModel rootFolder
]

{ #category : #'Famix-File' }
FmxNGAbstractFileAnchor >> setCorrespondingFile [
	"files have already been added to the model"
	^ self mooseModel allFiles asOrderedCollection
		detect: [ :file | file mooseName = self fileName ]
		ifFound: [ :aFile | self correspondingFile: aFile ]
]

{ #category : #accessing }
FmxNGAbstractFileAnchor >> sourceText [
	self subclassResponsibility
]

{ #category : #testing }
FmxNGAbstractFileAnchor >> sourcesAreReadable [
	| file |
	^ (file := self fileReference) exists and: [ file size > 0 ]
]
