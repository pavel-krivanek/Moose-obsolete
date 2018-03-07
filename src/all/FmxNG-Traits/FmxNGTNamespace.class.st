Class {
	#name : #FmxNGTNamespace,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#namespaceEntities => FMMany type: #FmxNGTNamespaceEntity opposite: #parentNamespace',
		'#namespaceOwner => FMOne type: #FmxNGTWithNamespaces opposite: #namespaces'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTNamespace class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TNamespace super: #FmxNGTNamespaceGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
