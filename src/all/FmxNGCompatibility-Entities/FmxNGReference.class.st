Class {
	#name : #FmxNGReference,
	#superclass : #FmxNGAssociation,
	#traits : 'FmxNGTReference',
	#classTraits : 'FmxNGTReference classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGReference class >> annotation [

	<generated>
	<MSEClass: #Reference super: #FmxNGAssociation>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGReference class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGReference class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTReference)
]

{ #category : #meta }
FmxNGReference class >> requirements [

	<generated>
	^ {  }
]

{ #category : #visiting }
FmxNGReference >> accept: aVisitor [

	aVisitor visitReference: self
]

{ #category : #visiting }
FmxNGReference >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self source: (aVisitor visit: anEntity source).
	self target: (aVisitor visit: anEntity target).
]

{ #category : #'instance  creation' }
FmxNGReference >> from [
	^ self source. 
]

{ #category : #'instance  creation' }
FmxNGReference >> from: aSource [
	self source: aSource . 
]

{ #category : #testing }
FmxNGReference >> isReference [ 
	^true
]

{ #category : #testing }
FmxNGReference >> mooseNameOn: aStream [
	"aStream nextPutAll: 'Reference'."

	self from ifNotNil: [ aStream nextPutAll: self from name ].
	aStream nextPutAll: ' refers to '.
	self to ifNotNil: [ aStream nextPutAll: self to name ]
]

{ #category : #testing }
FmxNGReference >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (Reference)'
]

{ #category : #'instance  creation' }
FmxNGReference >> to [
	^ self target
]

{ #category : #'instance  creation' }
FmxNGReference >> to: aTarget [
	self target: aTarget
]
