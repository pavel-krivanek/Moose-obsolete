"
This offers a source anchor that connects a sourced entity to a file through a relative path stored in the fileName. In addition, the source can be further specified with a startLine and an endLine number in the file.
"
Trait {
	#name : #FmxNGTFileAnchor,
	#instVars : [
		'correspondingFile',
		'encoding',
		'fileName'
	],
	#category : #'FmxNG-Traits-FileAnchor'
}

{ #category : #meta }
FmxNGTFileAnchor classSide >> annotation [

	<MSEClass: #TFileAnchor super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTFileAnchor classSide >> generatedSlotNames [
	<generated>
	'FmxNGTFileAnchor class>>#generatedSlotNames'.
	^ #(encoding correspondingFile fileName)
]

{ #category : #generator }
FmxNGTFileAnchor classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #adding }
FmxNGTFileAnchor >> addToFile: entity [
	^ self correspondingFile addEntity: entity
]

{ #category : #accessing }
FmxNGTFileAnchor >> completeText [
	self sourcesAreReadable ifFalse: [ ^ '' ].
	
	^ self fileReference
		binaryReadStreamDo:
			[ :in | (ZnCharacterReadStream on: in encoding: self encoding) upToEnd ]
]

{ #category : #accessing }
FmxNGTFileAnchor >> containerFiles [
	^ self correspondingFile ifNil: [ {} ] ifNotNil: [ :file | {file} ]
]

{ #category : #accessing }
FmxNGTFileAnchor >> correspondingFile [

	<MSEProperty: #correspondingFile type: #FmxNGTFile>
	<generated>
	<MSEComment: 'File associated to this source anchor'>
	^ correspondingFile
]

{ #category : #accessing }
FmxNGTFileAnchor >> correspondingFile: anObject [

	<generated>
	correspondingFile := anObject

]

{ #category : #decoding }
FmxNGTFileAnchor >> detectEncoding [
	self fileReference exists
		ifFalse: [ ^ nil ].
	^ [ self fileReference binaryReadStreamDo: [ :in | (ZnCharacterEncoder detectEncoding: in upToEnd) identifier ] ]
		on: ZnCharacterEncodingError
		do: [ nil ]
]

{ #category : #accessing }
FmxNGTFileAnchor >> encoding [
	<MSEProperty: #encoding type: #String>
	<MSEComment: 'A string representing the encoding of a file'>
	^ encoding ifNil: [ encoding := self detectEncoding ]
]

{ #category : #accessing }
FmxNGTFileAnchor >> encoding: anObject [

	<generated>
	encoding := anObject

]

{ #category : #accessing }
FmxNGTFileAnchor >> fileName [

	<MSEProperty: #fileName type: #String>
	<generated>
	<MSEComment: 'Name of the source file'>
	^ fileName
]

{ #category : #accessing }
FmxNGTFileAnchor >> fileName: aFileName [
	fileName := aFileName copyReplaceAll: '\' with: '/'. 
]

{ #category : #accessing }
FmxNGTFileAnchor >> fileReference [
	^ self rootFolder asFileReference resolve: self fileName
]

{ #category : #accessing }
FmxNGTFileAnchor >> hasSourceText [
	^ self completeText notEmpty 
]

{ #category : #testing }
FmxNGTFileAnchor >> isFile [
	^ true
]

{ #category : #accessing }
FmxNGTFileAnchor >> lineCount [
	^ self hasSourceText 
		ifTrue: [ self sourceText lineCount ]
		ifFalse: [ self notExistentMetricValue ]
	
]

{ #category : #private }
FmxNGTFileAnchor >> privateHasEncoding [
	^ encoding isNotNil
]

{ #category : #initialization }
FmxNGTFileAnchor >> rootFolder [
	^ self mooseModel rootFolder
]

{ #category : #initialization }
FmxNGTFileAnchor >> setCorrespondingFile [
	"files have already been added to the model"
	^ self mooseModel allFiles asOrderedCollection
		detect: [ :file | file mooseName = self fileName ]
		ifFound: [ :aFile | self correspondingFile: aFile ]
]

{ #category : #accessing }
FmxNGTFileAnchor >> sourceText [

	"I should be overriden in my users"
	^ String new
]

{ #category : #testing }
FmxNGTFileAnchor >> sourcesAreReadable [
	| file |
	^ (file := self fileReference) exists and: [ file size > 0 ]
]
