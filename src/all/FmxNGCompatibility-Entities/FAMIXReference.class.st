Class {
	#name : #FAMIXReference,
	#superclass : #FAMIXAssociation,
	#traits : 'FmxNGTReference',
	#classTraits : 'FmxNGTReference classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXReference class >> annotation [

	<generated>
	<MSEClass: #Reference super: #FAMIXAssociation>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FAMIXReference class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXReference class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTReference)
]

{ #category : #meta }
FAMIXReference class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'instance creation' }
FAMIXReference class >> source: source target: target [
	^ self new source: source; target: target
]

{ #category : #'Famix-Extensions' }
FAMIXReference >> accept: aVisitor [

	aVisitor visitReference: self
]

{ #category : #'Famix-Extensions' }
FAMIXReference >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self source: (aVisitor visit: anEntity source).
	self target: (aVisitor visit: anEntity target).
]

{ #category : #accessing }
FAMIXReference >> from [
	^ self source. 
]

{ #category : #accessing }
FAMIXReference >> from: aSource [
	self source: aSource . 
]

{ #category : #'Famix-Implementation' }
FAMIXReference >> mooseNameOn: aStream [
	"aStream nextPutAll: 'Reference'."

	self from ifNotNil: [ aStream nextPutAll: self from name ].
	aStream nextPutAll: ' refers to '.
	self to ifNotNil: [ aStream nextPutAll: self to name ]
]

{ #category : #'Famix-Implementation' }
FAMIXReference >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (Reference)'
]

{ #category : #accessing }
FAMIXReference >> to [
	^ self target
]

{ #category : #accessing }
FAMIXReference >> to: aTarget [
	self target: aTarget
]
