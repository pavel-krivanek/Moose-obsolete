Trait {
	#name : #FmxNGTWithTypes,
	#instVars : [
		'#types => FMMany type: #FmxNGTType opposite: #typeContainer'
	],
	#category : #'FmxNG-Traits-Type'
}

{ #category : #meta }
FmxNGTWithTypes classSide >> annotation [

	<MSEClass: #TWithTypes super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithTypes classSide >> generatedSlotNames [
	<generated>
	'FmxNGTWithTypes class>>#generatedSlotNames'.
	^ #(types)
]

{ #category : #generator }
FmxNGTWithTypes classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #adding }
FmxNGTWithTypes >> addType: aType [ 
	types add: aType
]

{ #category : #accessing }
FmxNGTWithTypes >> allRecursiveTypes [
	"Retrieves all nested types recursively"
	
	| result |
	result := Set new.
	self allRecursiveTypesDo: [:each | result add: each ].
	^ result
]

{ #category : #accessing }
FmxNGTWithTypes >> allRecursiveTypesDo: aBlock [
	"Traverses all nested types recursively"

	self types do: [ :each | 
		aBlock value: each.
		each allRecursiveTypesDo: aBlock ]
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FmxNGTWithTypes >> clientTypes [
	<MSEProperty: #clientTypes type: #FmxNGTType>
	<multivalued>
	<derived>
	<MSEComment: 'All types that depend on (inherit, staticly access, or use some methods of) the receiver'>
	^ (self queryAllIncoming atScope: FmxNGTType) withoutSelfLoops
]

{ #category : #metrics }
FmxNGTWithTypes >> fanOut [
	<MSEProperty: #fanOut type: #Number>
	<derived>
	<MSEComment: 'Number of provider classes'>

	^self
		lookUpPropertyNamed: #fanOut
		computedAs: [self providerTypes size]
]

{ #category : #metrics }
FmxNGTWithTypes >> fanOut: aNumber [

	self privateState propertyAt: #fanOut put: aNumber
]

{ #category : #accessing }
FmxNGTWithTypes >> providerTypes [
	<MSEProperty: #providerTypes type: #FmxNGTType>
	<derived>
	<multivalued>
	<MSEComment: 'All types that the receiver depends on (inherites, staticly accesses, or uses some of their methods)'>
	^ (self queryAllOutgoing atScope: FmxNGTType) withoutSelfLoops
]

{ #category : #accessing }
FmxNGTWithTypes >> types [

	<generated>
	<MSEComment: 'Types contained (declared) in this entity, if any.
#types is declared in ContainerEntity because different kinds of container can embed types. Types are usually contained in a Famix.Namespace. But types can also be contained in a Famix.Class or Famix.Method (in Java with inner classes for example). Famix.Function can also contain some types such as structs.'>
	^ types
]

{ #category : #accessing }
FmxNGTWithTypes >> types: anObject [

	<generated>
	types value: anObject

]
