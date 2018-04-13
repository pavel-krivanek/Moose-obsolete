Class {
	#name : #FmxNGInheritance,
	#superclass : #FmxNGInheritanceGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #visiting }
FmxNGInheritance >> accept: aVisitor [

	aVisitor visitInheritance: self
]

{ #category : #visiting }
FmxNGInheritance >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self superclass: (aVisitor visit: anEntity superclass).
	self subclass: (aVisitor visit: anEntity subclass).
]

{ #category : #visiting }
FmxNGInheritance >> from [
	^ self subclass 
]

{ #category : #visiting }
FmxNGInheritance >> from: aSubclass [
	self subclass: aSubclass 
]

{ #category : #visiting }
FmxNGInheritance >> isInheritance [ 
	^true
]

{ #category : #visiting }
FmxNGInheritance >> mooseNameOn: aStream [
	self subclass ifNotNil: [ aStream nextPutAll: self subclass name ].
	aStream nextPutAll: ' -> '.
	self superclass ifNotNil: [ aStream nextPutAll: self superclass name ]
]

{ #category : #visiting }
FmxNGInheritance >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (Inheritance)'
]

{ #category : #visiting }
FmxNGInheritance >> to [
	^ self superclass 
]

{ #category : #visiting }
FmxNGInheritance >> to: aSuperclass [
	self superclass: aSuperclass
]
