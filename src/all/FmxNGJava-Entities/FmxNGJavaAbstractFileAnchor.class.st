Class {
	#name : #FmxNGJavaAbstractFileAnchor,
	#superclass : #FmxNGJavaSourceAnchor,
	#traits : 'FmxNGTFileAnchor',
	#classTraits : 'FmxNGTFileAnchor classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaAbstractFileAnchor class >> annotation [

	<generated>
	<MSEClass: #AbstractFileAnchor super: #FmxNGJavaSourceAnchor>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaAbstractFileAnchor class >> generatedSlotNames [
	<generated>
	'FmxNGJavaAbstractFileAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaAbstractFileAnchor class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTFileAnchor)
]

{ #category : #meta }
FmxNGJavaAbstractFileAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFileAnchor >> <= aFileAnchor [
	^ self fileName <= aFileAnchor fileName
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFileAnchor >> addToFile: entity [
	^ self correspondingFile addEntity: entity
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFileAnchor >> completeText [
	self sourcesAreReadable ifFalse: [ ^ '' ].
	
	^ self fileReference
		binaryReadStreamDo:
			[ :in | (ZnCharacterReadStream on: in encoding: self encoding) upToEnd ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFileAnchor >> containerFiles [
	^ self correspondingFile ifNil: [ {} ] ifNotNil: [ :file | {file} ]
]

{ #category : #accessing }
FmxNGJavaAbstractFileAnchor >> correspondingFile [
	"file pointed to by this source anchor, ideally this value should never be nil for file-based systems"
	<MSEProperty: #correspondingFile type: #FmxNGJavaFile>
	<MSEComment: 'File associated to this source anchor'>
	^ self privateState attributeAt: #correspondingFile ifAbsent: [ nil ]
]

{ #category : #accessing }
FmxNGJavaAbstractFileAnchor >> correspondingFile: aFAMIXFile [
	self privateState attributeAt: #correspondingFile put: aFAMIXFile
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFileAnchor >> detectEncoding [
	self fileReference exists
		ifFalse: [ ^ nil ].
	^ [ self fileReference binaryReadStreamDo: [ :in | (ZnCharacterEncoder detectEncoding: in upToEnd) identifier ] ]
		on: ZnCharacterEncodingError
		do: [ nil ]
]

{ #category : #accessing }
FmxNGJavaAbstractFileAnchor >> encoding [
	<MSEProperty: #encoding type: #String>
	<MSEComment: 'A string representing the encoding of a file'>
	^ encoding ifNil: [ encoding := self detectEncoding ]
]

{ #category : #accessing }
FmxNGJavaAbstractFileAnchor >> fileName: aFileName [
	fileName := aFileName copyReplaceAll: '\' with: '/'. 
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFileAnchor >> fileReference [
	^ self rootFolder asFileReference resolve: self fileName
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFileAnchor >> hasSourceText [
	^ self completeText notEmpty 
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFileAnchor >> intervalAsCharPos [
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFileAnchor >> isFile [
	^ true
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFileAnchor >> lineCount [
	^ self hasSourceText 
		ifTrue: [ self sourceText lineCount ]
		ifFalse: [ self notExistentMetricValue ]
	
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFileAnchor >> mooseNameOn: aStream [
	aStream nextPutAll: self fileName asString
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFileAnchor >> privateHasEncoding [
	^ encoding isNotNil
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFileAnchor >> rootFolder [
	^ self mooseModel rootFolder
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFileAnchor >> setCorrespondingFile [
	"files have already been added to the model"
	^ self mooseModel allFiles asOrderedCollection
		detect: [ :file | file mooseName = self fileName ]
		ifFound: [ :aFile | self correspondingFile: aFile ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFileAnchor >> sourceText [
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
FmxNGJavaAbstractFileAnchor >> sourcesAreReadable [
	| file |
	^ (file := self fileReference) exists and: [ file size > 0 ]
]
