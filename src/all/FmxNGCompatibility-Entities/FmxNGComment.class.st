Class {
	#name : #FmxNGComment,
	#superclass : #FmxNGCommentGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGComment class >> annotation [

	<MSEClass: #Comment super: #FmxNGCommentGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #accessing }
FmxNGComment class >> content: aString [
	^ self new
		content: aString;
		yourself
]

{ #category : #'Famix-Extensions' }
FmxNGComment >> accept: aVisitor [

	aVisitor visitComment: self
]

{ #category : #converting }
FmxNGComment >> asFAMIXComment [
	^ self
]

{ #category : #accessing }
FmxNGComment >> belongsTo [
	
	^ self container
]

{ #category : #'Famix-Extensions' }
FmxNGComment >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self content: anEntity content copy
]

{ #category : #printing }
FmxNGComment >> gtDisplayOn: aStream [
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

{ #category : #printing }
FmxNGComment >> printOn: aStream [
	self sourceText ifNotNil: [ :sourceText | aStream nextPutAll: (sourceText contractTo: 50) ].
	aStream nextPutAll: ' (comment on '.
	self container printOn: aStream.
	aStream nextPut: $)
]

{ #category : #'Famix-Extensions' }
FmxNGComment >> sourceText [
	^ self content ifNil: [ self sourceAnchor ifNil: [ '' ] ifNotNil: [ :sa | sa sourceText ] ]
]
