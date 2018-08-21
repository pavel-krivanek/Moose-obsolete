Trait {
	#name : #FmxNGTWithAttributes,
	#instVars : [
		'#attributes => FMMany type: #FmxNGTAttribute opposite: #parentType'
	],
	#category : #'FmxNG-Traits-Attribute'
}

{ #category : #meta }
FmxNGTWithAttributes classSide >> annotation [

	<MSEClass: #TWithAttributes super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithAttributes classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithAttributes class>>#generatedSlotNames'.
	^ #(attributes)
]

{ #category : #generator }
FmxNGTWithAttributes classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #adding }
FmxNGTWithAttributes >> addAttribute: anAttribute [
	attributes add: anAttribute
]

{ #category : #accessing }
FmxNGTWithAttributes >> attributes [

	<generated>
	<MSEComment: 'List of attributes declared by this type.'>
	^ attributes
]

{ #category : #accessing }
FmxNGTWithAttributes >> attributes: anObject [

	<generated>
	attributes value: anObject

]

{ #category : #'Famix-Extensions' }
FmxNGTWithAttributes >> numberOfAttributes [
	<MSEProperty: #numberOfAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of attributes in the class'>
	
	^self
		lookUpPropertyNamed: #numberOfAttributes
		computedAs: [self attributes size]
]

{ #category : #'Famix-Extensions' }
FmxNGTWithAttributes >> numberOfAttributes: aNumber [

	self privateState propertyAt: #numberOfAttributes put: aNumber
]

{ #category : #metrics }
FmxNGTWithAttributes >> numberOfPrivateAttributes [
	<MSEProperty: #numberOfPrivateAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of private attributes in a class'>
	
	^self
		lookUpPropertyNamed: #numberOfPrivateAttributes
		computedAs: [(self attributes select: [:each | each isPrivate]) size]
]

{ #category : #metrics }
FmxNGTWithAttributes >> numberOfPrivateAttributes: aNumber [

	self privateState propertyAt: #numberOfPrivateAttributes put: aNumber
]

{ #category : #metrics }
FmxNGTWithAttributes >> numberOfProtectedAttributes [
	<MSEProperty: #numberOfProtectedAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of protected attributes in a class'>				
	
	^self
		lookUpPropertyNamed: #numberOfProtectedAttributes
		computedAs: [(self attributes select: [:each | each isProtected]) size]
]

{ #category : #metrics }
FmxNGTWithAttributes >> numberOfProtectedAttributes: aNumber [

	self privateState propertyAt: #numberOfProtectedAttributes put: aNumber
]

{ #category : #metrics }
FmxNGTWithAttributes >> numberOfPublicAttributes [
	<MSEProperty: #numberOfPublicAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of public attributes in a class'>
	
	^self
		lookUpPropertyNamed: #numberOfPublicAttributes
		computedAs: [(self attributes select: [:each | each isPublic]) size]
]

{ #category : #metrics }
FmxNGTWithAttributes >> numberOfPublicAttributes: aNumber [

	self privateState propertyAt: #numberOfPublicAttributes put: aNumber
]

{ #category : #metrics }
FmxNGTWithAttributes >> numberOfRevealedAttributes [
	<MSEProperty: #numberOfRevealedAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of public attributes plus the number of accessor methods'>		

	^self
		lookUpPropertyNamed: #numberOfRevealedAttributes
		computedAs:
			[self numberOfPublicAttributes + self numberOfAccessorMethods]
]

{ #category : #metrics }
FmxNGTWithAttributes >> numberOfRevealedAttributes: aNumber [

	self privateState propertyAt: #numberOfRevealedAttributes put: aNumber
]
