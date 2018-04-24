Class {
	#name : #FmxNGInheritance,
	#superclass : #FmxNGAssociation,
	#traits : 'FmxNGTSubInheritance + FmxNGTSuperInheritance',
	#classTraits : 'FmxNGTSubInheritance classTrait + FmxNGTSuperInheritance classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGInheritance class >> annotation [

	<generated>
	<MSEClass: #Inheritance super: #FmxNGAssociation>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGInheritance class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGInheritance class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTSubInheritance FmxNGTSuperInheritance)
]

{ #category : #meta }
FmxNGInheritance class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'instance creation' }
FmxNGInheritance >> accept: aVisitor [

	aVisitor visitInheritance: self
]

{ #category : #'instance creation' }
FmxNGInheritance >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self superclass: (aVisitor visit: anEntity superclass).
	self subclass: (aVisitor visit: anEntity subclass).
]

{ #category : #'instance creation' }
FmxNGInheritance >> from [
	^ self subclass 
]

{ #category : #'instance creation' }
FmxNGInheritance >> from: aSubclass [
	self subclass: aSubclass 
]

{ #category : #'instance creation' }
FmxNGInheritance >> isInheritance [ 
	^true
]

{ #category : #'instance creation' }
FmxNGInheritance >> mooseNameOn: aStream [
	self subclass ifNotNil: [ aStream nextPutAll: self subclass name ].
	aStream nextPutAll: ' -> '.
	self superclass ifNotNil: [ aStream nextPutAll: self superclass name ]
]

{ #category : #'instance creation' }
FmxNGInheritance >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (Inheritance)'
]

{ #category : #'instance creation' }
FmxNGInheritance >> to [
	^ self superclass 
]

{ #category : #'instance creation' }
FmxNGInheritance >> to: aSuperclass [
	self superclass: aSuperclass
]
