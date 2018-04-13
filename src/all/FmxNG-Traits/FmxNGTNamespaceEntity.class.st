Class {
	#name : #FmxNGTNamespaceEntity,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentNamespace => FMOne type: #FmxNGTNamespace opposite: #namespaceEntities'
	],
	#category : #'FmxNG-Traits'
}

{ #category : #meta }
FmxNGTNamespaceEntity class >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TNamespaceEntity super: #FmxTraitEntity>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #accessing }
FmxNGTNamespaceEntity >> parentNamespace [

	<generated>
	^ parentNamespace
]

{ #category : #accessing }
FmxNGTNamespaceEntity >> parentNamespace: anObject [

	<generated>
	parentNamespace := anObject

]
