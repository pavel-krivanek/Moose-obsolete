Class {
	#name : #FmxNGJavaMultipleFileAnchor,
	#superclass : #FmxNGJavaSourceAnchor,
	#instVars : [
		'allFiles'
	],
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaMultipleFileAnchor class >> annotation [

	<MSEClass: #MultipleFileAnchor super: #FmxNGJavaSourceAnchor>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaMultipleFileAnchor class >> generatedSlotNames [
	<generated>
	'FmxNGJavaMultipleFileAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaMultipleFileAnchor class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGJavaMultipleFileAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaMultipleFileAnchor >> addFileAnchorWithPath: aPath [
	self allFiles detect: [ :each | each fileName = aPath ] ifNone: [ self createAnchorWithPath: aPath ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMultipleFileAnchor >> addSourceAnchor: aSourceAnchor [
	self allFiles add: aSourceAnchor
]

{ #category : #'as yet unclassified' }
FmxNGJavaMultipleFileAnchor >> addToFile: entity [
	^ self allFiles do: [ :each | each addToFile: entity ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMultipleFileAnchor >> allFiles [
	<MSEProperty: #allFiles type: #FmxNGTFileAnchor>
	<multivalued>
	<MSEComment: 'All source code definition files'>
	^ allFiles
]

{ #category : #'as yet unclassified' }
FmxNGJavaMultipleFileAnchor >> allFiles: aCollection [
	allFiles := aCollection
]

{ #category : #'as yet unclassified' }
FmxNGJavaMultipleFileAnchor >> containerFiles [
	^ self propertyNamed: #containerFiles ifAbsentPut: [ self allFiles collect: #correspondingFile thenReject: #isNil ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMultipleFileAnchor >> createAnchorWithPath: aPath [
	self
		addSourceAnchor:
			(FmxNGJavaFileAnchor new
				fileName: aPath;
				mooseModel: self mooseModel;
				yourself)
]

{ #category : #'as yet unclassified' }
FmxNGJavaMultipleFileAnchor >> fileName [
	"for compatibility with FAMIXFileAnchor, guard condition not needed: it has atleast one file anchor"
	^ self allFiles anyOne fileName
]

{ #category : #'as yet unclassified' }
FmxNGJavaMultipleFileAnchor >> initialize [
	super initialize.
	allFiles := OrderedCollection new.
]

{ #category : #'as yet unclassified' }
FmxNGJavaMultipleFileAnchor >> isMultiple [
	^ true
]

{ #category : #'as yet unclassified' }
FmxNGJavaMultipleFileAnchor >> lineCount [
	^ self allFiles inject: 0 into: [ :sum :each | sum + each lineCount  ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMultipleFileAnchor >> sourceText [
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
