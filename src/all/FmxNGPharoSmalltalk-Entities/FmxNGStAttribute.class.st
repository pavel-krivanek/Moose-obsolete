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
	^ { FmxNGStType }
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
FmxNGStAttribute >> isSharedVariable [

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
FmxNGStAttribute >> typeScope [
	^ self parentType
]
