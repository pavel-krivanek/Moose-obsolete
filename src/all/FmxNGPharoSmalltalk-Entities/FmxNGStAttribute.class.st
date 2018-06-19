Class {
	#name : #FmxNGStAttribute,
	#superclass : #FmxNGStStructuralEntity,
	#traits : 'FmxNGTAttribute + FmxNGTWithClassScope',
	#classTraits : 'FmxNGTAttribute classTrait + FmxNGTWithClassScope classTrait',
	#instVars : [
		'#hasClassScope'
	],
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStAttribute class >> annotation [

	<generated>
	<MSEClass: #Attribute super: #FmxNGStStructuralEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStAttribute class >> generatedSlotNames [
	<generated>
	'FmxNGStAttribute class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStAttribute class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAttribute FmxNGTWithClassScope)
]

{ #category : #meta }
FmxNGStAttribute class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Implementation' }
FmxNGStAttribute >> accessingClasses [

	^(self accessingMethods collectAsSet: [:each | each belongsTo]) asOrderedCollection
]

{ #category : #'Famix-Implementation' }
FmxNGStAttribute >> accessingMethods [

	^ self incomingAccesses collectAsSet: [:anAccess | anAccess accessor].

]

{ #category : #'Famix-Implementation' }
FmxNGStAttribute >> beProtected [
	^ self isProtected: true
]

{ #category : #'Famix-Implementation' }
FmxNGStAttribute >> beSharedVariable [

	self propertyNamed: #sharedVariable put: true 
]

{ #category : #'Famix-Implementation' }
FmxNGStAttribute >> belongsTo [

	^ self parentType
]

{ #category : #'Famix-Implementation' }
FmxNGStAttribute >> belongsTo: aType [
	self parentType
]

{ #category : #testing }
FmxNGStAttribute >> hasClassScope [
	<MSEProperty: #hasClassScope type: #Boolean>
	<MSEComment: 'True if class-side attribute'>

	^ hasClassScope
]

{ #category : #testing }
FmxNGStAttribute >> hasClassScope: aBoolean [

	hasClassScope := aBoolean
]

{ #category : #'Famix-Implementation' }
FmxNGStAttribute >> hierarchyNestingLevel [
	<MSEProperty: #hierarchyNestingLevel type: #Number>
	<derived>
	<MSEComment: 'Attribute hierarchy nesting level'>
		
	^self
		lookUpPropertyNamed: #hierarchyNestingLevel
		computedAs: [self belongsTo hierarchyNestingLevel]
]

{ #category : #'Famix-Implementation' }
FmxNGStAttribute >> hierarchyNestingLevel: aNumber [

	self privateState propertyAt: #hierarchyNestingLevel put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGStAttribute >> initialize [
	super initialize.
	hasClassScope := false.

]

{ #category : #'Famix-Implementation' }
FmxNGStAttribute >> isAttribute [
	^ true
]

{ #category : #testing }
FmxNGStAttribute >> isProtected: aBoolean [
	^ self modifierSet: aBoolean for: #protected
]

{ #category : #'Famix-Implementation' }
FmxNGStAttribute >> isSharedVariable [

	"^ self propertyNamed: #sharedVariable ifAbsent: [false] "
	^ self propertyNamed: #sharedVariable ifNil: [false]
]

{ #category : #'Famix-Implementation' }
FmxNGStAttribute >> mooseNameOn: aStream [ 
	| parent |
	parent := self belongsTo.
	parent ifNotNil: 
		[ parent mooseNameOn: aStream.
		aStream nextPut: $. ].
	self name ifNotNil: [ aStream nextPutAll: self name ].
]

{ #category : #'Famix-Implementation' }
FmxNGStAttribute >> numberOfAccesses [
	<MSEProperty: #numberOfAccesses type: #Number>
	<derived>
	<MSEComment: 'The number of accesses of an attribute.'>

	^self
		lookUpPropertyNamed: #numberOfAccesses
		computedAs: [self incomingAccesses size]
]

{ #category : #'Famix-Implementation' }
FmxNGStAttribute >> numberOfAccessingClasses [
	<MSEProperty: #numberOfAccessingClasses type: #Number>
	<derived>
	<MSEComment: 'The number of classes from which at least one method accesses an attribute.'>

	^self
		lookUpPropertyNamed: #numberOfAccessingClasses
		computedAs: [self accessingClasses size]
]

{ #category : #'Famix-Implementation' }
FmxNGStAttribute >> numberOfAccessingMethods [
	<MSEProperty: #numberOfAccessingMethods type: #Number>
	<derived>
	<MSEComment: 'The number of methods accessing an attribute.'>				
	
	^self
		lookUpPropertyNamed: #numberOfAccessingMethods
		computedAs: [self accessingMethods size]
]

{ #category : #'Famix-Implementation' }
FmxNGStAttribute >> numberOfGlobalAccesses [
	<MSEProperty: #numberOfGlobalAccesses type: #Number>
	<derived>
	<MSEComment: 'The number of accesses to an attribute from outside the class defining the attribute.'>	

	^self
		lookUpPropertyNamed: #numberOfGlobalAccesses
		computedAs: [self globalAccesses size]
]

{ #category : #'Famix-Implementation' }
FmxNGStAttribute >> numberOfLocalAccesses [
	<MSEProperty: #numberOfLocalAccesses type: #Number>
	<derived>
	<MSEComment: 'The number of accesses to an attribute from inside the class defining the attribute.'>
		
	^self
		lookUpPropertyNamed: #numberOfLocalAccesses
		computedAs: [self localAccesses size]
]

{ #category : #'Famix-Implementation' }
FmxNGStAttribute >> readAccesses [
	
	^self incomingAccesses select: [:each | each isRead]
]

{ #category : #'Famix-Implementation' }
FmxNGStAttribute >> typeScope [
	^ self parentType
]
