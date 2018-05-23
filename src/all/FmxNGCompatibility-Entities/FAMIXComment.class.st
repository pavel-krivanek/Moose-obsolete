Class {
	#name : #FAMIXComment,
	#superclass : #FAMIXSourcedEntity,
	#traits : 'FmxNGTComment',
	#classTraits : 'FmxNGTComment classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXComment class >> annotation [

	<generated>
	<MSEClass: #Comment super: #FAMIXSourcedEntity>
	<package: #'FmxNGCompatibility-EntitiesOld'>
	<generated>
	^self
]

{ #category : #'instance creation' }
FAMIXComment class >> content: aString [
	^ self new
		content: aString;
		yourself
]

{ #category : #generator }
FAMIXComment class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXComment class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTComment)
]

{ #category : #meta }
FAMIXComment class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Extensions' }
FAMIXComment >> accept: aVisitor [

	aVisitor visitComment: self
]

{ #category : #converting }
FAMIXComment >> asFAMIXComment [
	^ self
]

{ #category : #'Famix-Implementation' }
FAMIXComment >> belongsTo [
	
	^ self container
]

{ #category : #'Famix-Extensions' }
FAMIXComment >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self content: anEntity content copy
]

{ #category : #printing }
FAMIXComment >> gtDisplayOn: aStream [
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

{ #category : #'Famix-Implementation' }
FAMIXComment >> printOn: aStream [
	self sourceText ifNotNil: [ :sourceText | aStream nextPutAll: (sourceText contractTo: 50) ].
	aStream nextPutAll: ' (comment on '.
	self container printOn: aStream.
	aStream nextPut: $)
]

{ #category : #accessing }
FAMIXComment >> sourceText [
	^ self content ifNil: [ self sourceAnchor ifNil: [ '' ] ifNotNil: [ :sa | sa sourceText ] ]
]
