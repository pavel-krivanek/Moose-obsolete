Class {
	#name : #FmxNGAccess,
	#superclass : #FmxNGAccessGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGAccess class >> annotation [

	<MSEClass: #Access super: #FmxNGAccessGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #'Famix-Extensions' }
FmxNGAccess >> accept: aVisitor [

	aVisitor visitInheritance: self
]

{ #category : #'Famix-Extensions' }
FmxNGAccess >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self superclass: (aVisitor visit: anEntity superclass).
	self subclass: (aVisitor visit: anEntity subclass).
]

{ #category : #'instance creation' }
FmxNGAccess >> from [
	^ self accessor 
]

{ #category : #'instance creation' }
FmxNGAccess >> from: anAccessor [
	self accessor: anAccessor 
]

{ #category : #'Famix-Implementation' }
FmxNGAccess >> isInheritance [ 
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

{ #category : #'Famix-Implementation' }
FmxNGAccess >> mooseNameOn: aStream [
	self subclass ifNotNil: [ aStream nextPutAll: self subclass name ].
	aStream nextPutAll: ' -> '.
	self superclass ifNotNil: [ aStream nextPutAll: self superclass name ]
]

{ #category : #'Famix-Implementation' }
FmxNGAccess >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (Inheritance)'
]

{ #category : #'instance creation' }
FmxNGAccess >> to [	
	^ self variable 
]

{ #category : #'instance creation' }
FmxNGAccess >> to: aVariable [
	self variable: aVariable
]
