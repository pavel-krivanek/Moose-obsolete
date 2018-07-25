Class {
	#name : #FmxNGJavaInheritance,
	#superclass : #FmxNGJavaAssociation,
	#traits : 'FmxNGTSubInheritance + FmxNGTSuperInheritance',
	#classTraits : 'FmxNGTSubInheritance classTrait + FmxNGTSuperInheritance classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaInheritance class >> annotation [

	<MSEClass: #Inheritance super: #FmxNGJavaAssociation>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaInheritance class >> generatedSlotNames [
	<generated>
	'FmxNGJavaInheritance class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaInheritance class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTSubInheritance FmxNGTSuperInheritance)
]

{ #category : #meta }
FmxNGJavaInheritance class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaInheritance >> accept: aVisitor [

	aVisitor visitInheritance: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaInheritance >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self superclass: (aVisitor visit: anEntity superclass).
	self subclass: (aVisitor visit: anEntity subclass).
]

{ #category : #'as yet unclassified' }
FmxNGJavaInheritance >> historicalUniqueName [
	
	^(self subclass mooseName , '->' , self superclass mooseName) asSymbol
]

{ #category : #testing }
FmxNGJavaInheritance >> isInheritance [ 
	^true
]

{ #category : #'as yet unclassified' }
FmxNGJavaInheritance >> mooseNameOn: aStream [
	self subclass ifNotNil: [ aStream nextPutAll: self subclass name ].
	aStream nextPutAll: ' -> '.
	self superclass ifNotNil: [ aStream nextPutAll: self superclass name ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaInheritance >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (Inheritance)'
]
