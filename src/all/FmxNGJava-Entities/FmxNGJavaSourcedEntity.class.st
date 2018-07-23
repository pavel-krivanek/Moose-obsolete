Class {
	#name : #FmxNGJavaSourcedEntity,
	#superclass : #FmxNGJavaEntity,
	#traits : 'FmxNGTWithComments + FmxNGTWithFiles + FmxNGTWithSourceAnchor + FmxNGTWithSourceLanguage',
	#classTraits : 'FmxNGTWithComments classTrait + FmxNGTWithFiles classTrait + FmxNGTWithSourceAnchor classTrait + FmxNGTWithSourceLanguage classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaSourcedEntity class >> annotation [

	<generated>
	<MSEClass: #SourcedEntity super: #FmxNGJavaEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaSourcedEntity class >> generatedSlotNames [
	<generated>
	'FmxNGJavaSourcedEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaSourcedEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTWithComments FmxNGTWithFiles FmxNGTWithSourceAnchor FmxNGTWithSourceLanguage)
]

{ #category : #meta }
FmxNGJavaSourcedEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourcedEntity >> accept: aVisitor [

	aVisitor visitEntity: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourcedEntity >> addComment: aComment [
	self comments add: aComment asFmxNGJavaComment
]

{ #category : #accessing }
FmxNGJavaSourcedEntity >> containerFiles [
	"this method returns a collection because a source entity can be defined in single as well as multiple files. Hence we support the language that allow the separation of declaration and definition"

	<MSEProperty: #containerFiles type: #FmxNGJavaFile>
	<multivalued>
	<MSEComment: 'List of files containing the entity'>
	"<container> -> should not be on this side..."
	
	^ self sourceAnchor ifNotNil: [ self sourceAnchor containerFiles ] ifNil: [ #() ]
]

{ #category : #accessing }
FmxNGJavaSourcedEntity >> containerFiles: aColl [
	"This method is a hack for now because we need an opposite to the files."

	
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourcedEntity >> copyFrom: anEntity within: aVisitor [

	sourceAnchor := aVisitor visit: anEntity sourceAnchor.
	anEntity comments do: [:com | 
		self comments add: (aVisitor visit: com) ].

]

{ #category : #'as yet unclassified' }
FmxNGJavaSourcedEntity >> defineMultiSourceAnchorWithPath: aPath [

	 self ensureMultiSourceAnchor addFileAnchorWithPath: aPath
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourcedEntity >> ensureMultiSourceAnchor [
	"This method is also used by other packages"
	^self sourceAnchor
		ifNil: [ 
			self
				sourceAnchor:
					(FmxNGJavaMultipleFileAnchor new
						element: self;
						mooseModel: self mooseModel;
						yourself);
				sourceAnchor]
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourcedEntity >> fileAnchorPath: aString startLine: anInteger startColumn: anInteger2 endLine: anInteger3 endColumn: anInteger4 [
	"I need to be called after the mooseModel is set."

	self
		sourceAnchor:
			(FmxNGJavaFileAnchor
				fileName: aString
				startLine: anInteger
				startColumn: anInteger2
				endLine: anInteger3
				endColumn: anInteger4
				model: self mooseModel)
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourcedEntity >> fileAnchorPath: aString startPos: anInteger endPos: anotherInteger [
	"I need to be called after the mooseModel is set."

	self
		sourceAnchor:
			(FmxNGJavaIndexedFileAnchor
				fileName: aString
				startPos: anInteger
				endPos: anotherInteger
				model: self mooseModel)
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourcedEntity >> isImplicitVariable [
	^false
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourcedEntity >> numberOfJavaNullChecks [
	<MSEProperty: #numberOfJavaNullChecks type: #Number> <derived>
	^self
		lookUpPropertyNamed: #numberOfJavaNullChecks
		computedAs: [
			| nullCheckTextPatterns |
			nullCheckTextPatterns := #('== null' '!= null' 'null ==' 'null !=').
			(self sourceText allRegexMatches: ( '|' join: nullCheckTextPatterns)) size ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourcedEntity >> removeComment: aComment [
	self comments remove: aComment
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourcedEntity >> sourceLanguage [
	^ self declaredSourceLanguage ifNil: [
		self mooseModel 
			ifNil: [ FmxNGJavaUnknownSourceLanguage new ] 
			ifNotNil: [ self mooseModel sourceLanguage ] ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaSourcedEntity >> structuralChildren [ 
	^ #()
]
