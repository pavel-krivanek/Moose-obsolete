Class {
	#name : #FAMIXSourcedEntity,
	#superclass : #FAMIXEntity,
	#traits : 'FmxNGTWithComments + FmxNGTWithFiles + FmxNGTWithSourceAnchor + FmxNGTWithSourceLanguage',
	#classTraits : 'FmxNGTWithComments classTrait + FmxNGTWithFiles classTrait + FmxNGTWithSourceAnchor classTrait + FmxNGTWithSourceLanguage classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXSourcedEntity class >> annotation [

	<generated>
	<MSEClass: #SourcedEntity super: #FAMIXEntity>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #generator }
FAMIXSourcedEntity class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXSourcedEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTWithComments FmxNGTWithFiles FmxNGTWithSourceAnchor FmxNGTWithSourceLanguage)
]

{ #category : #meta }
FAMIXSourcedEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Extensions' }
FAMIXSourcedEntity >> accept: aVisitor [

	aVisitor visitEntity: self
]

{ #category : #accessing }
FAMIXSourcedEntity >> addComment: aComment [
	self comments add: aComment asFAMIXComment
]

{ #category : #'Famix-File' }
FAMIXSourcedEntity >> containerFiles [
	"this method returns a collection because a source entity can be defined in single as well as multiple files. Hence we support the language that allow the separation of declaration and definition"

	<MSEProperty: #containerFiles type: #FAMIXFile>
	<multivalued>
	<MSEComment: 'List of files containing the entity'>
	"<container> -> should not be on this side..."
	
	^ self sourceAnchor ifNotNil: [ self sourceAnchor containerFiles ] ifNil: [ #() ]
]

{ #category : #'Famix-File' }
FAMIXSourcedEntity >> containerFiles: aColl [
	"This method is a hack for now because we need an opposite to the files."

	
]

{ #category : #'Famix-Extensions' }
FAMIXSourcedEntity >> copyFrom: anEntity within: aVisitor [

	sourceAnchor := aVisitor visit: anEntity sourceAnchor.
	anEntity comments do: [:com | 
		self comments add: (aVisitor visit: com) ].

]

{ #category : #'Famix-SourceAnchor' }
FAMIXSourcedEntity >> defineMultiSourceAnchorWithPath: aPath [

	 self ensureMultiSourceAnchor addFileAnchorWithPath: aPath
]

{ #category : #'Famix-SourceAnchor' }
FAMIXSourcedEntity >> ensureMultiSourceAnchor [
	"This method is also used by other packages"
	^self sourceAnchor
		ifNil: [ 
			self
				sourceAnchor:
					(FAMIXMultipleFileAnchor new
						element: self;
						mooseModel: self mooseModel;
						yourself);
				sourceAnchor]
]

{ #category : #'Famix-SourceAnchor' }
FAMIXSourcedEntity >> fileAnchorPath: aString startLine: anInteger startColumn: anInteger2 endLine: anInteger3 endColumn: anInteger4 [
	"I need to be called after the mooseModel is set."

	self
		sourceAnchor:
			(FAMIXFileAnchor
				fileName: aString
				startLine: anInteger
				startColumn: anInteger2
				endLine: anInteger3
				endColumn: anInteger4
				model: self mooseModel)
]

{ #category : #'Famix-SourceAnchor' }
FAMIXSourcedEntity >> fileAnchorPath: aString startPos: anInteger endPos: anotherInteger [
	"I need to be called after the mooseModel is set."

	self
		sourceAnchor:
			(FAMIXIndexedFileAnchor
				fileName: aString
				startPos: anInteger
				endPos: anotherInteger
				model: self mooseModel)
]

{ #category : #'Famix-Extensions' }
FAMIXSourcedEntity >> formattedSourceText [
	^ self sourceLanguage format: self sourceText from: self
]

{ #category : #'Famix-Extensions-testing' }
FAMIXSourcedEntity >> hasComments [
	^ self comments isEmpty not
]

{ #category : #'Famix-Extensions-testing' }
FAMIXSourcedEntity >> hasSourceAnchor [
	^ self sourceAnchor notNil
]

{ #category : #'Famix-Implementation' }
FAMIXSourcedEntity >> isImplicitVariable [
	^false
]

{ #category : #'Moose-Finder' }
FAMIXSourcedEntity >> mooseFinderParentFolderIn: composite [
	<moosePresentationOrder: 10>
	self sourceAnchor ifNil: [ ^ self ].
	self sourceAnchor isFile
		ifFalse: [ ^ self ].
	(self sourceAnchor fileReference parent gtInspectorItemsIn: composite) titleIcon: MooseIcons mooseFolder
]

{ #category : #'Moose-Finder' }
FAMIXSourcedEntity >> mooseFinderSourceTextIn: composite [
	<moosePresentationOrder: 10>
	composite text
			title: 'Source';
			titleIcon: MooseIcons mooseSourceText;
			format: [ self mooseInterestingEntity formattedSourceText ];
			when: [ self mooseInterestingEntity sourceText notEmpty ]
]

{ #category : #'Famix-Extensions' }
FAMIXSourcedEntity >> numberOfJavaNullChecks [
	<MSEProperty: #numberOfJavaNullChecks type: #Number> <derived>
	^self
		lookUpPropertyNamed: #numberOfJavaNullChecks
		computedAs: [
			| nullCheckTextPatterns |
			nullCheckTextPatterns := #('== null' '!= null' 'null ==' 'null !=').
			(self sourceText allRegexMatches: ( '|' join: nullCheckTextPatterns)) size ]
]

{ #category : #'Famix-Extensions' }
FAMIXSourcedEntity >> numberOfLinesOfCodeWithMoreThanOneCharacter [
	<MSEProperty: #numberOfLinesOfCodeWithMoreThanOneCharacter type: #Number> <derived>
	<MSEComment: 'This metric is essentially similar to the numberOfLinesOfCode one, 
	the difference being that it only counts the lines with more than one non-whitespace characters.
	This metric is particularly useful for comparing the density of other metrics on a line of code.
	For example, depending on the formatting style chosen a Java curly brace, or a Smalltalk block 
	can appear inline or on a separate line. For normalization purposes, these commonly appearing 
	cases can be ruled out through the present metric.'>
	^self
		lookUpPropertyNamed: #numberOfLinesOfCodeWithMoreThanOneCharacter
		computedAs: [			
			(self sourceText lines select: [ :line |
				line trimBoth size > 1 ]) size ]
]

{ #category : #accessing }
FAMIXSourcedEntity >> removeComment: aComment [
	self comments remove: aComment
]

{ #category : #accessing }
FAMIXSourcedEntity >> sourceAnchor: aSourceAnchor [
	sourceAnchor := aSourceAnchor.
	
	sourceAnchor ifNil: [ ^ self ].
	aSourceAnchor element = self ifFalse: [ aSourceAnchor element: self ]
]

{ #category : #accessing }
FAMIXSourcedEntity >> sourceLanguage [
	^ self declaredSourceLanguage ifNil: [
		self mooseModel 
			ifNil: [ FAMIXUnknownSourceLanguage new ] 
			ifNotNil: [ self mooseModel sourceLanguage ] ]
]

{ #category : #'Famix-Extensions' }
FAMIXSourcedEntity >> sourceText [
	self isStub ifTrue: [ ^ '' ].
	
	^ self sourceAnchor 
		ifNil: [ '' ]
		ifNotNil: [ self sourceAnchor sourceText ]
]

{ #category : #'Moose-Finder' }
FAMIXSourcedEntity >> spotterPreviewSourceIn: composite [
	<spotterPreview: 0>
	composite text 
		title: [ self mooseName ];
		display: #yourself;
		entity: self sourceText
]

{ #category : #'Famix-Extensions' }
FAMIXSourcedEntity >> structuralChildren [ 
	^ #()
]
