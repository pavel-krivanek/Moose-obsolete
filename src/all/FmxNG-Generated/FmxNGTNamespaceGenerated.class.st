"
FAMIXNamespace represents a namespace from the source language. Namespaces have semantic meaning in the language so they influence the unique name of the entity.

A namespace denotes an entity that has meaning from a language point of view. For example, in C++, there exist a concept with the same name that has no other responsibility beside providing a lexical scope for the contained classes and funcions.

When an entity is placed inside a namespace, the fully qualified name (mooseName) is affected.
"
Class {
	#name : #FmxNGTNamespaceGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#namespaceEntities => FMMany type: #FmxNGTNamespaceEntity opposite: #parentNamespace',
		'#namespaceOwner => FMOne type: #FmxNGTWithNamespaces opposite: #namespaces'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTNamespaceGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TNamespace super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTNamespaceGenerated >> namespaceEntities [

	^ namespaceEntities
]

{ #category : #accessing }
FmxNGTNamespaceGenerated >> namespaceEntities: anObject [

	namespaceEntities value: anObject

]

{ #category : #accessing }
FmxNGTNamespaceGenerated >> namespaceOwner [

	^ namespaceOwner
]

{ #category : #accessing }
FmxNGTNamespaceGenerated >> namespaceOwner: anObject [

	namespaceOwner := anObject

]
