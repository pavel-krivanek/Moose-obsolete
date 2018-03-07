Class {
	#name : #FmxNGTWithNamespaces,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#namespaces => FMMany type: #FmxNGTNamespace opposite: #namespaceOwner'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTWithNamespaces class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithNamespaces super: #FmxNGTWithNamespacesGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
