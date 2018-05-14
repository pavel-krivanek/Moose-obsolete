Class {
	#name : #FmxNGMultipleFileAnchor,
	#superclass : #FmxNGSourceAnchor,
	#instVars : [
		'allFiles'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGMultipleFileAnchor class >> annotation [

	<generated>
	<MSEClass: #MultipleFileAnchor super: #FmxNGSourceAnchor>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGMultipleFileAnchor class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGMultipleFileAnchor class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGMultipleFileAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #public }
FmxNGMultipleFileAnchor >> addFileAnchorWithPath: aPath [
	self allFiles detect: [ :each | each fileName = aPath ] ifNone: [ self createAnchorWithPath: aPath ]
]

{ #category : #adding }
FmxNGMultipleFileAnchor >> addSourceAnchor: aSourceAnchor [
	self allFiles add: aSourceAnchor
]

{ #category : #'Famix-File' }
FmxNGMultipleFileAnchor >> addToFile: entity [
	^ self allFiles do: [ :each | each addToFile: entity ]
]

{ #category : #accessing }
FmxNGMultipleFileAnchor >> allFiles [
	<MSEProperty: #allFiles type: #FmxNGAbstractFileAnchor>
	<multivalued>
	<MSEComment: 'All source code definition files'>
	^ allFiles
]

{ #category : #accessing }
FmxNGMultipleFileAnchor >> allFiles: aCollection [
	allFiles := aCollection
]

{ #category : #'Famix-File' }
FmxNGMultipleFileAnchor >> containerFiles [
	^ self propertyNamed: #containerFiles ifAbsentPut: [ self allFiles collect: #correspondingFile thenReject: #isNil ]
]

{ #category : #adding }
FmxNGMultipleFileAnchor >> createAnchorWithPath: aPath [
	self
		addSourceAnchor:
			(FmxNGFileAnchor new
				fileName: aPath;
				mooseModel: self mooseModel;
				yourself)
]

{ #category : #accessing }
FmxNGMultipleFileAnchor >> fileName [
	"for compatibility with FAMIXFileAnchor, guard condition not needed: it has atleast one file anchor"
	^ self allFiles anyOne fileName
]

{ #category : #initialization }
FmxNGMultipleFileAnchor >> initialize [
	super initialize.
	allFiles := OrderedCollection new.
]

{ #category : #testing }
FmxNGMultipleFileAnchor >> isMultiple [
	^ true
]

{ #category : #accessing }
FmxNGMultipleFileAnchor >> lineCount [
	^ self allFiles inject: 0 into: [ :sum :each | sum + each lineCount  ]
]

{ #category : #accessing }
FmxNGMultipleFileAnchor >> sourceText [
	^ String
		streamContents: [ :s | 
			self allFiles
				do: [ :file | 
					s
						<< '=======================';
						<< file fileName;
						<< '====================';
						lf;
						<< file sourceText ] ]
]
