Class {
	#name : #FmxNGJavaComment,
	#superclass : #FmxNGJavaSourcedEntity,
	#traits : 'FmxNGTComment',
	#classTraits : 'FmxNGTComment classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaComment class >> annotation [

	<generated>
	<MSEClass: #Comment super: #FmxNGJavaSourcedEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaComment class >> generatedSlotNames [
	<generated>
	'FmxNGJavaComment class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaComment class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTComment)
]

{ #category : #meta }
FmxNGJavaComment class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaComment >> accept: aVisitor [

	aVisitor visitComment: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaComment >> asFAMIXComment [
	^ self
]

{ #category : #'as yet unclassified' }
FmxNGJavaComment >> belongsTo [
	
	^ self container
]

{ #category : #'as yet unclassified' }
FmxNGJavaComment >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self content: anEntity content copy
]

{ #category : #'as yet unclassified' }
FmxNGJavaComment >> gtDisplayOn: aStream [
	| preview |
	preview := self sourceText truncate: 10.
	preview := preview copyReplaceAll: (String with: Character cr with: Character lf) with: ' '.	
	preview := preview copyReplaceAll: (String with: Character cr) with: ' '.	
	preview := preview copyReplaceAll: (String with: Character lf) with: ' '.
	aStream 
		nextPut: $";
		nextPutAll: preview;
		nextPutAll: '" in '.
	self belongsTo notNil ifTrue: [
		self belongsTo gtDisplayOn: aStream ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaComment >> printOn: aStream [
	self sourceText ifNotNil: [ :sourceText | aStream nextPutAll: (sourceText contractTo: 50) ].
	aStream nextPutAll: ' (comment on '.
	self container printOn: aStream.
	aStream nextPut: $)
]

{ #category : #'as yet unclassified' }
FmxNGJavaComment >> sourceText [
	^ self content ifNil: [ self sourceAnchor ifNil: [ '' ] ifNotNil: [ :sa | sa sourceText ] ]
]
