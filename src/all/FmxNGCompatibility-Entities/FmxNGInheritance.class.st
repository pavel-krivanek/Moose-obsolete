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

{ #category : #'Famix-Extensions' }
FmxNGInheritance >> accept: aVisitor [

	aVisitor visitInheritance: self
]

{ #category : #'Famix-Extensions' }
FmxNGInheritance >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self superclass: (aVisitor visit: anEntity superclass).
	self subclass: (aVisitor visit: anEntity subclass).
]

{ #category : #accessing }
FmxNGInheritance >> from [
	^ self subclass 
]

{ #category : #accessing }
FmxNGInheritance >> from: aSubclass [
	self subclass: aSubclass 
]

{ #category : #'Moose-Hismo' }
FmxNGInheritance >> historicalUniqueName [
	
	^(self subclass mooseName , '->' , self superclass mooseName) asSymbol
]

{ #category : #testing }
FmxNGInheritance >> isInheritance [ 
	^true
]

{ #category : #'Famix-Implementation' }
FmxNGInheritance >> mooseNameOn: aStream [
	self subclass ifNotNil: [ aStream nextPutAll: self subclass name ].
	aStream nextPutAll: ' -> '.
	self superclass ifNotNil: [ aStream nextPutAll: self superclass name ]
]

{ #category : #'Famix-Implementation' }
FmxNGInheritance >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (Inheritance)'
]

{ #category : #accessing }
FmxNGInheritance >> to [
	^ self superclass 
]

{ #category : #accessing }
FmxNGInheritance >> to: aSuperclass [
	self superclass: aSuperclass
]
