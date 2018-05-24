Class {
	#name : #FAMIXAttribute,
	#superclass : #FAMIXStructuralEntity,
	#traits : 'FmxNGTAttribute + FmxNGTWithClassScope',
	#classTraits : 'FmxNGTAttribute classTrait + FmxNGTWithClassScope classTrait',
	#instVars : [
		'#hasClassScope'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXAttribute class >> annotation [

	<generated>
	<MSEClass: #Attribute super: #FAMIXStructuralEntity>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #generator }
FAMIXAttribute class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXAttribute class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAttribute FmxNGTWithClassScope)
]

{ #category : #meta }
FAMIXAttribute class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Extensions' }
FAMIXAttribute >> accept: aVisitor [

	aVisitor visitAttribute: self
]

{ #category : #'Famix-Implementation' }
FAMIXAttribute >> accessingClasses [

	^(self accessingMethods collectAsSet: [:each | each belongsTo]) asOrderedCollection
]

{ #category : #'Famix-Implementation' }
FAMIXAttribute >> accessingMethods [

	^ self incomingAccesses collectAsSet: [:anAccess | anAccess accessor].

]

{ #category : #'Famix-Smalltalk' }
FAMIXAttribute >> beInstanceVariable [

	self propertyNamed: #sharedVariable put: false 
]

{ #category : #'Famix-Smalltalk' }
FAMIXAttribute >> beProtected [
	^ self isProtected: true
]

{ #category : #'Famix-Smalltalk' }
FAMIXAttribute >> beSharedVariable [

	self propertyNamed: #sharedVariable put: true 
]

{ #category : #accessing }
FAMIXAttribute >> belongsTo [

	^ self parentType
]

{ #category : #accessing }
FAMIXAttribute >> belongsTo: aType [
	self parentType
]

{ #category : #'Famix-Extensions' }
FAMIXAttribute >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self hasClassScope: anEntity hasClassScope
]

{ #category : #accessing }
FAMIXAttribute >> hasClassScope [
	<MSEProperty: #hasClassScope type: #Boolean>
	<MSEComment: 'True if class-side attribute'>

	^ hasClassScope
]

{ #category : #accessing }
FAMIXAttribute >> hasClassScope: aBoolean [

	hasClassScope := aBoolean
]

{ #category : #'Famix-Extensions' }
FAMIXAttribute >> hierarchyNestingLevel [
	<MSEProperty: #hierarchyNestingLevel type: #Number>
	<derived>
	<MSEComment: 'Attribute hierarchy nesting level'>
		
	^self
		lookUpPropertyNamed: #hierarchyNestingLevel
		computedAs: [self belongsTo hierarchyNestingLevel]
]

{ #category : #'Famix-Extensions' }
FAMIXAttribute >> hierarchyNestingLevel: aNumber [

	self privateState propertyAt: #hierarchyNestingLevel put: aNumber
]

{ #category : #initialization }
FAMIXAttribute >> initialize [
	super initialize.
	hasClassScope := false.

]

{ #category : #'Famix-Implementation' }
FAMIXAttribute >> isAttribute [
	^ true
]

{ #category : #'Famix-Smalltalk' }
FAMIXAttribute >> isSharedVariable [

	"^ self propertyNamed: #sharedVariable ifAbsent: [false] "
	^ self propertyNamed: #sharedVariable ifNil: [false]
]

{ #category : #'Famix-Implementation' }
FAMIXAttribute >> mooseNameOn: aStream [ 
	| parent |
	parent := self belongsTo.
	parent ifNotNil: 
		[ parent mooseNameOn: aStream.
		aStream nextPut: $. ].
	self name ifNotNil: [ aStream nextPutAll: self name ].
]

{ #category : #'moosechef-scoping-filtering' }
FAMIXAttribute >> namespaceScope [
	^ self parentType namespaceScope
]

{ #category : #'Famix-Extensions' }
FAMIXAttribute >> numberOfAccesses [
	<MSEProperty: #numberOfAccesses type: #Number>
	<derived>
	<MSEComment: 'The number of accesses of an attribute.'>

	^self
		lookUpPropertyNamed: #numberOfAccesses
		computedAs: [self incomingAccesses size]
]

{ #category : #'Famix-Extensions' }
FAMIXAttribute >> numberOfAccessingClasses [
	<MSEProperty: #numberOfAccessingClasses type: #Number>
	<derived>
	<MSEComment: 'The number of classes from which at least one method accesses an attribute.'>

	^self
		lookUpPropertyNamed: #numberOfAccessingClasses
		computedAs: [self accessingClasses size]
]

{ #category : #'Famix-Extensions' }
FAMIXAttribute >> numberOfAccessingMethods [
	<MSEProperty: #numberOfAccessingMethods type: #Number>
	<derived>
	<MSEComment: 'The number of methods accessing an attribute.'>				
	
	^self
		lookUpPropertyNamed: #numberOfAccessingMethods
		computedAs: [self accessingMethods size]
]

{ #category : #'Famix-Extensions' }
FAMIXAttribute >> numberOfGlobalAccesses [
	<MSEProperty: #numberOfGlobalAccesses type: #Number>
	<derived>
	<MSEComment: 'The number of accesses to an attribute from outside the class defining the attribute.'>	

	^self
		lookUpPropertyNamed: #numberOfGlobalAccesses
		computedAs: [self globalAccesses size]
]

{ #category : #'Famix-Extensions' }
FAMIXAttribute >> numberOfLocalAccesses [
	<MSEProperty: #numberOfLocalAccesses type: #Number>
	<derived>
	<MSEComment: 'The number of accesses to an attribute from inside the class defining the attribute.'>
		
	^self
		lookUpPropertyNamed: #numberOfLocalAccesses
		computedAs: [self localAccesses size]
]

{ #category : #'moosechef-scoping-filtering' }
FAMIXAttribute >> packageScope [
	^ self parentType packageScope
]

{ #category : #'Famix-Implementation' }
FAMIXAttribute >> printOn: aStream [ 
	| parent |
	parent := self belongsTo.
	parent ifNotNil:
		[ aStream nextPutAll: parent name.
		aStream nextPut: $. ].
	self name ifNotNil: [ aStream nextPutAll: self name ].
	aStream nextPutAll: ' (Attribute)'
]

{ #category : #'Famix-Implementation' }
FAMIXAttribute >> readAccesses [
	
	^self incomingAccesses select: [:each | each isRead]
]

{ #category : #'moosechef-scoping-filtering' }
FAMIXAttribute >> typeScope [
	^ self parentType
]
