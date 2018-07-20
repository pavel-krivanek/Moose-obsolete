Class {
	#name : #FmxNGJavaReference,
	#superclass : #FmxNGJavaAssociation,
	#traits : 'FmxNGTReference',
	#classTraits : 'FmxNGTReference classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaReference class >> annotation [

	<generated>
	<MSEClass: #Reference super: #FmxNGJavaAssociation>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaReference class >> generatedSlotNames [
	<generated>
	'FmxNGJavaReference class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaReference class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTReference)
]

{ #category : #meta }
FmxNGJavaReference class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaReference >> accept: aVisitor [

	aVisitor visitReference: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaReference >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self source: (aVisitor visit: anEntity source).
	self target: (aVisitor visit: anEntity target).
]

{ #category : #'as yet unclassified' }
FmxNGJavaReference >> mooseNameOn: aStream [
	"aStream nextPutAll: 'Reference'."

	self from ifNotNil: [ aStream nextPutAll: self from name ].
	aStream nextPutAll: ' refers to '.
	self to ifNotNil: [ aStream nextPutAll: self to name ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaReference >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (Reference)'
]
