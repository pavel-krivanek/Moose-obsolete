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

{ #category : #'instance creation' }
FmxNGReference class >> source: source target: target [
	^ self new source: source; target: target
]

{ #category : #'Famix-Extensions' }
FmxNGReference >> accept: aVisitor [

	aVisitor visitReference: self
]

{ #category : #'Famix-Extensions' }
FmxNGReference >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self source: (aVisitor visit: anEntity source).
	self target: (aVisitor visit: anEntity target).
]

{ #category : #accessing }
FmxNGReference >> from [
	^ self source. 
]

{ #category : #accessing }
FmxNGReference >> from: aSource [
	self source: aSource . 
]

{ #category : #'Famix-Implementation' }
FmxNGReference >> mooseNameOn: aStream [
	"aStream nextPutAll: 'Reference'."

	self from ifNotNil: [ aStream nextPutAll: self from name ].
	aStream nextPutAll: ' refers to '.
	self to ifNotNil: [ aStream nextPutAll: self to name ]
]

{ #category : #'Famix-Implementation' }
FmxNGReference >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (Reference)'
]

{ #category : #accessing }
FmxNGReference >> to [
	^ self target
]

{ #category : #accessing }
FmxNGReference >> to: aTarget [
	self target: aTarget
]
