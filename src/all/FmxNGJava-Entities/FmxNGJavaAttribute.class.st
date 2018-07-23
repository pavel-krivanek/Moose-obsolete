Class {
	#name : #FmxNGJavaAttribute,
	#superclass : #FmxNGJavaStructuralEntity,
	#traits : 'FmxNGTAttribute + FmxNGTWithClassScope',
	#classTraits : 'FmxNGTAttribute classTrait + FmxNGTWithClassScope classTrait',
	#instVars : [
		'#hasClassScope'
	],
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaAttribute class >> annotation [

	<generated>
	<MSEClass: #Attribute super: #FmxNGJavaStructuralEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaAttribute class >> generatedSlotNames [
	<generated>
	'FmxNGJavaAttribute class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaAttribute class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAttribute FmxNGTWithClassScope)
]

{ #category : #meta }
FmxNGJavaAttribute class >> requirements [

	<generated>
	^ { FmxNGJavaType }
]

{ #category : #'as yet unclassified' }
FmxNGJavaAttribute >> accept: aVisitor [

	aVisitor visitAttribute: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaAttribute >> beInstanceVariable [

	self propertyNamed: #sharedVariable put: false 
]

{ #category : #'as yet unclassified' }
FmxNGJavaAttribute >> beSharedVariable [

	self propertyNamed: #sharedVariable put: true 
]

{ #category : #'as yet unclassified' }
FmxNGJavaAttribute >> belongsTo [

	^ self parentType
]

{ #category : #'as yet unclassified' }
FmxNGJavaAttribute >> belongsTo: aType [
	self parentType
]

{ #category : #'as yet unclassified' }
FmxNGJavaAttribute >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self hasClassScope: anEntity hasClassScope
]

{ #category : #'as yet unclassified' }
FmxNGJavaAttribute >> hasClassScope [
	<MSEProperty: #hasClassScope type: #Boolean>
	<MSEComment: 'True if class-side attribute'>

	^ hasClassScope
]

{ #category : #'as yet unclassified' }
FmxNGJavaAttribute >> hasClassScope: aBoolean [

	hasClassScope := aBoolean
]

{ #category : #'as yet unclassified' }
FmxNGJavaAttribute >> hierarchyNestingLevel [
	<MSEProperty: #hierarchyNestingLevel type: #Number>
	<derived>
	<MSEComment: 'Attribute hierarchy nesting level'>
		
	^self
		lookUpPropertyNamed: #hierarchyNestingLevel
		computedAs: [self belongsTo hierarchyNestingLevel]
]

{ #category : #'as yet unclassified' }
FmxNGJavaAttribute >> hierarchyNestingLevel: aNumber [

	self privateState propertyAt: #hierarchyNestingLevel put: aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaAttribute >> initialize [
	super initialize.
	hasClassScope := false.

]

{ #category : #testing }
FmxNGJavaAttribute >> isAttribute [
	^ true
]

{ #category : #'as yet unclassified' }
FmxNGJavaAttribute >> isSharedVariable [

	"^ self propertyNamed: #sharedVariable ifAbsent: [false] "
	^ self propertyNamed: #sharedVariable ifNil: [false]
]

{ #category : #'as yet unclassified' }
FmxNGJavaAttribute >> mooseNameOn: aStream [ 
	| parent |
	parent := self belongsTo.
	parent ifNotNil: 
		[ parent mooseNameOn: aStream.
		aStream nextPut: $. ].
	self name ifNotNil: [ aStream nextPutAll: self name ].
]

{ #category : #'as yet unclassified' }
FmxNGJavaAttribute >> namespaceScope [
	^ self parentType namespaceScope
]

{ #category : #'as yet unclassified' }
FmxNGJavaAttribute >> packageScope [
	^ self parentType packageScope
]

{ #category : #'as yet unclassified' }
FmxNGJavaAttribute >> printOn: aStream [ 
	| parent |
	parent := self belongsTo.
	parent ifNotNil:
		[ aStream nextPutAll: parent name.
		aStream nextPut: $. ].
	self name ifNotNil: [ aStream nextPutAll: self name ].
	aStream nextPutAll: ' (Attribute)'
]

{ #category : #'as yet unclassified' }
FmxNGJavaAttribute >> typeScope [
	^ self parentType
]
