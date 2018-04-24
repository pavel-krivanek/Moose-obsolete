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

{ #category : #'instance creation' }
FmxNGAccess >> from [
	^ self accessor 
]

{ #category : #'instance creation' }
FmxNGAccess >> from: anAccessor [
	self accessor: anAccessor 
]

{ #category : #testing }
FmxNGAccess >> isAccess [
	^true
]

{ #category : #'instance creation' }
FmxNGAccess >> isRead [
	<MSEProperty: #isRead type: #Boolean> <derived>
	<MSEComment: 'Read access'>
	
	^ isWrite isNil ifTrue: [ false ] ifFalse: [ isWrite not ]
]

{ #category : #'instance creation' }
FmxNGAccess >> isReadWriteUnknown [
	<MSEProperty: #isReadWriteUnknown type: #Boolean> <derived>
	<MSEComment: ''>
	
	^ isWrite isNil
]

{ #category : #'instance creation' }
FmxNGAccess >> isWrite [

	^ isWrite ifNil: [ false ]
]

{ #category : #'Famix-Implementation' }
FmxNGAccess >> mooseNameOn: aStream [
	self subclass ifNotNil: [ aStream nextPutAll: self subclass name ].
	aStream nextPutAll: ' -> '.
	self superclass ifNotNil: [ aStream nextPutAll: self superclass name ]
]

{ #category : #'Famix-Implementation' }
FmxNGAccess >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (Access)'
]

{ #category : #'instance creation' }
FmxNGAccess >> to [	
	^ self variable 
]

{ #category : #'instance creation' }
FmxNGAccess >> to: aVariable [
	self variable: aVariable
]
