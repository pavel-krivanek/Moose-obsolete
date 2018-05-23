Class {
	#name : #FAMIXAccess,
	#superclass : #FAMIXAssociation,
	#traits : 'FmxNGTAccess',
	#classTraits : 'FmxNGTAccess classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXAccess class >> annotation [

	<generated>
	<MSEClass: #Access super: #FAMIXAssociation>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #'Moose-Query-Extensions' }
FAMIXAccess class >> fromMethod [
	^ self lookupSelector: #accessor
]

{ #category : #generator }
FAMIXAccess class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXAccess class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAccess)
]

{ #category : #meta }
FAMIXAccess class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Moose-Query-Extensions' }
FAMIXAccess class >> toMethod [
	^ self lookupSelector: #variable
]

{ #category : #'Famix-Extensions' }
FAMIXAccess >> accept: aVisitor [

	aVisitor visitAccess: self
]

{ #category : #'Famix-Extensions' }
FAMIXAccess >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self isWrite: anEntity isWrite.
	self accessor: (aVisitor visit: anEntity accessor).
	self variable: (aVisitor visit: anEntity variable).
]

{ #category : #accessing }
FAMIXAccess >> from [
	^ self accessor 
]

{ #category : #accessing }
FAMIXAccess >> from: anAccessor [
	self accessor: anAccessor 
]

{ #category : #testing }
FAMIXAccess >> isAccess [
	^true
]

{ #category : #'Famix-Implementation' }
FAMIXAccess >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (Access)'
]

{ #category : #accessing }
FAMIXAccess >> to [	
	^ self variable 
]

{ #category : #accessing }
FAMIXAccess >> to: aVariable [
	self variable: aVariable
]
