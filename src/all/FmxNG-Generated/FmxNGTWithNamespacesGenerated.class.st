Class {
	#name : #FmxNGTWithNamespacesGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#namespaces => FMMany type: #FmxNGTNamespace opposite: #namespaceOwner'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTWithNamespacesGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TWithNamespaces super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTWithNamespacesGenerated >> namespaces [

	^ namespaces
]

{ #category : #accessing }
FmxNGTWithNamespacesGenerated >> namespaces: anObject [

	namespaces value: anObject

]
