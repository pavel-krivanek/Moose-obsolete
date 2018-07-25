Class {
	#name : #FmxNGJavaAccess,
	#superclass : #FmxNGJavaAssociation,
	#traits : 'FmxNGTAccess',
	#classTraits : 'FmxNGTAccess classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaAccess class >> annotation [

	<generated>
	<MSEClass: #Access super: #FmxNGJavaAssociation>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaAccess class >> generatedSlotNames [
	<generated>
	'FmxNGJavaAccess class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaAccess class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAccess)
]

{ #category : #meta }
FmxNGJavaAccess class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaAccess >> accept: aVisitor [

	aVisitor visitAccess: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaAccess >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self isWrite: anEntity isWrite.
	self accessor: (aVisitor visit: anEntity accessor).
	self variable: (aVisitor visit: anEntity variable).
]

{ #category : #'as yet unclassified' }
FmxNGJavaAccess >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (Access)'
]
