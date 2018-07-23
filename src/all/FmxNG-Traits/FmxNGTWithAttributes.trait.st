Trait {
	#name : #FmxNGTWithAttributes,
	#instVars : [
		'#attributes => FMMany type: #FmxNGTAttribute opposite: #parentType'
	],
	#category : #'FmxNG-Traits-Attribute'
}

{ #category : #meta }
FmxNGTWithAttributes classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
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
