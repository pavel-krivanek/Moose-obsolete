"
FAMIXNamespace represents a namespace from the source language. Namespaces have semantic meaning in the language so they influence the unique name of the entity.

A namespace denotes an entity that has meaning from a language point of view. For example, in C++, there exist a concept with the same name that has no other responsibility beside providing a lexical scope for the contained classes and funcions.

When an entity is placed inside a namespace, the fully qualified name (mooseName) is affected.
"
Trait {
	#name : #FmxNGTNamespace,
	#instVars : [
		'#namespaceEntities => FMMany type: #FmxNGTNamespaceEntity opposite: #parentNamespace',
		'#namespaceOwner => FMOne type: #FmxNGTWithNamespaces opposite: #namespaces'
	],
	#category : #'FmxNG-Traits-Namespaces'
}

{ #category : #meta }
FmxNGTNamespace classSide >> annotation [

	<MSEClass: #TNamespace super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTNamespace classSide >> generatedSlotNames [
	<generated>
	'FmxNGTNamespace class>>#generatedSlotNames'.
	^ #(namespaceEntities namespaceOwner)
]

{ #category : #generator }
FmxNGTNamespace classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #testing }
FmxNGTNamespace >> isNamespace [

	<generated>
	^ true
]

{ #category : #accessing }
FmxNGTNamespace >> namespaceEntities [

	<generated>
	^ namespaceEntities
]

{ #category : #accessing }
FmxNGTNamespace >> namespaceEntities: anObject [

	<generated>
	namespaceEntities value: anObject

]

{ #category : #accessing }
FmxNGTNamespace >> namespaceOwner [

	<generated>
	^ namespaceOwner
]

{ #category : #accessing }
FmxNGTNamespace >> namespaceOwner: anObject [

	<generated>
	namespaceOwner := anObject

]
