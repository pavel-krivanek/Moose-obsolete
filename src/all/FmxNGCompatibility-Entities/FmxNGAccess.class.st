Class {
	#name : #FmxNGAccess,
	#superclass : #FmxNGAssociation,
	#traits : 'FmxNGTAccess',
	#classTraits : 'FmxNGTAccess classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGAccess class >> annotation [

	<generated>
	<MSEClass: #Access super: #FmxNGAssociation>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAccess class >> fromMethod [
	^ self lookupSelector: #accessor
]

{ #category : #generator }
FmxNGAccess class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGAccess class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAccess)
]

{ #category : #meta }
FmxNGAccess class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAccess class >> toMethod [
	^ self lookupSelector: #variable
]

{ #category : #'Famix-Extensions' }
FmxNGAccess >> accept: aVisitor [

	aVisitor visitAccess: self
]

{ #category : #'Famix-Extensions' }
FmxNGAccess >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self isWrite: anEntity isWrite.
	self accessor: (aVisitor visit: anEntity accessor).
	self variable: (aVisitor visit: anEntity variable).
]

{ #category : #accessing }
FmxNGAccess >> from [
	^ self accessor 
]

{ #category : #accessing }
FmxNGAccess >> from: anAccessor [
	self accessor: anAccessor 
]

{ #category : #testing }
FmxNGAccess >> isAccess [
	^true
]

{ #category : #'Famix-Implementation' }
FmxNGAccess >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (Access)'
]

{ #category : #accessing }
FmxNGAccess >> to [	
	^ self variable 
]

{ #category : #accessing }
FmxNGAccess >> to: aVariable [
	self variable: aVariable
]
