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

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithNamespaces super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTWithNamespaces >> namespaces [

	<generated>
	^ namespaces
]

{ #category : #accessing }
FmxNGTWithNamespaces >> namespaces: anObject [

	<generated>
	namespaces value: anObject

]
