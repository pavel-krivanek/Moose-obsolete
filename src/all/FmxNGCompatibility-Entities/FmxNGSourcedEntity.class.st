Class {
	#name : #FmxNGSourcedEntity,
	#superclass : #FmxNGSourcedEntityGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #'Famix-Extensions' }
FmxNGSourcedEntity >> accept: aVisitor [

	aVisitor visitEntity: self
]

{ #category : #accessing }
FmxNGSourcedEntity >> addComment: aComment [
	self comments add: aComment asFAMIXComment
]

{ #category : #'Famix-File' }
FmxNGSourcedEntity >> containerFiles [
	"this method returns a collection because a source entity can be defined in single as well as multiple files. Hence we support the language that allow the separation of declaration and definition"

	<MSEProperty: #containerFiles type: #FmxNGFile>
	<multivalued>
	<MSEComment: 'List of files containing the entity'>
	"<container> -> should not be on this side..."
	
	^ self sourceAnchor ifNotNil: [ self sourceAnchor containerFiles ] ifNil: [ #() ]
]

{ #category : #'Famix-File' }
FmxNGSourcedEntity >> containerFiles: aColl [
	"This method is a hack for now because we need an opposite to the files."

	
]

{ #category : #'Famix-Extensions' }
FmxNGSourcedEntity >> copyFrom: anEntity within: aVisitor [

	sourceAnchor := aVisitor visit: anEntity sourceAnchor.
	anEntity comments do: [:com | 
		self comments add: (aVisitor visit: com) ].

]

{ #category : #'Famix-SourceAnchor' }
FmxNGSourcedEntity >> defineMultiSourceAnchorWithPath: aPath [

	 self ensureMultiSourceAnchor addFileAnchorWithPath: aPath
]

{ #category : #'Famix-SourceAnchor' }
FmxNGSourcedEntity >> ensureMultiSourceAnchor [
	"This method is also used by other packages"
	^self sourceAnchor
		ifNil: [ 
			self
				sourceAnchor:
					(FmxNGMultipleFileAnchor new
						element: self;
						mooseModel: self mooseModel;
						yourself);
				sourceAnchor]
]

{ #category : #'Famix-SourceAnchor' }
FmxNGSourcedEntity >> fileAnchorPath: aString startLine: anInteger startColumn: anInteger2 endLine: anInteger3 endColumn: anInteger4 [
	"I need to be called after the mooseModel is set."

	self
		sourceAnchor:
			(FmxNGFileAnchor
				fileName: aString
				startLine: anInteger
				startColumn: anInteger2
				endLine: anInteger3
				endColumn: anInteger4
				model: self mooseModel)
]

{ #category : #'Famix-SourceAnchor' }
FmxNGSourcedEntity >> fileAnchorPath: aString startPos: anInteger endPos: anotherInteger [
	"I need to be called after the mooseModel is set."

	self
		sourceAnchor:
			(FmxNGIndexedFileAnchor
				fileName: aString
				startPos: anInteger
				endPos: anotherInteger
				model: self mooseModel)
]

{ #category : #'Famix-Extensions' }
FmxNGSourcedEntity >> formattedSourceText [
	^ self sourceLanguage format: self sourceText from: self
]

{ #category : #'Famix-Extensions' }
FmxNGSourcedEntity >> hasComments [
	^ self comments isEmpty not
]

{ #category : #'Famix-Extensions' }
FmxNGSourcedEntity >> hasSourceAnchor [
	^ self sourceAnchor notNil
]

{ #category : #'Famix-Implementation' }
FmxNGSourcedEntity >> isImplicitVariable [
	^false
]

{ #category : #'Moose-Finder' }
FmxNGSourcedEntity >> mooseFinderParentFolderIn: composite [
	<moosePresentationOrder: 10>
	self sourceAnchor ifNil: [ ^ self ].
	self sourceAnchor isFile
		ifFalse: [ ^ self ].
	(self sourceAnchor fileReference parent gtInspectorItemsIn: composite) titleIcon: MooseIcons mooseFolder
]

{ #category : #'Moose-Finder' }
FmxNGSourcedEntity >> mooseFinderSourceTextIn: composite [
	<moosePresentationOrder: 10>
	composite text
			title: 'Source';
			titleIcon: MooseIcons mooseSourceText;
			format: [ self mooseInterestingEntity formattedSourceText ];
			when: [ self mooseInterestingEntity sourceText notEmpty ]
]

{ #category : #'Famix-Extensions' }
FmxNGSourcedEntity >> numberOfJavaNullChecks [
	<MSEProperty: #numberOfJavaNullChecks type: #Number> <derived>
	^self
		lookUpPropertyNamed: #numberOfJavaNullChecks
		computedAs: [
			| nullCheckTextPatterns |
			nullCheckTextPatterns := #('== null' '!= null' 'null ==' 'null !=').
			(self sourceText allRegexMatches: ( '|' join: nullCheckTextPatterns)) size ]
]

{ #category : #'Famix-Extensions' }
FmxNGSourcedEntity >> numberOfLinesOfCodeWithMoreThanOneCharacter [
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
FmxNGSourcedEntity >> removeComment: aComment [
	self comments remove: aComment
]

{ #category : #accessing }
FmxNGSourcedEntity >> sourceAnchor: aSourceAnchor [
	sourceAnchor := aSourceAnchor.
	
	sourceAnchor ifNil: [ ^ self ].
	aSourceAnchor element = self ifFalse: [ aSourceAnchor element: self ]
]

{ #category : #accessing }
FmxNGSourcedEntity >> sourceLanguage [
	^ self declaredSourceLanguage ifNil: [
		self mooseModel 
			ifNil: [ FmxNGUNKNOWNSourceLanguage new ] 
			ifNotNil: [ self mooseModel sourceLanguage ] ]
]

{ #category : #'Famix-Extensions' }
FmxNGSourcedEntity >> sourceText [
	self isStub ifTrue: [ ^ '' ].
	
	^ self sourceAnchor 
		ifNil: [ '' ]
		ifNotNil: [ self sourceAnchor sourceText ]
]

{ #category : #'Moose-Finder' }
FmxNGSourcedEntity >> spotterPreviewSourceIn: composite [
	<spotterPreview: 0>
	composite text 
		title: [ self mooseName ];
		display: #yourself;
		entity: self sourceText
]

{ #category : #'Famix-Extensions' }
FmxNGSourcedEntity >> structuralChildren [ 
	^ #()
]
