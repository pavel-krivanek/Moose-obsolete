Class {
	#name : #FmxNGTNamespaceEntityGenerated,
	#superclass : #FmxTraitEntity,
	#instVars : [
		'#parentNamespace => FMOne type: #FmxNGTNamespace opposite: #namespaceEntities'
	],
	#category : #'FmxNG-Generated-Traits'
}

{ #category : #meta }
FmxNGTNamespaceEntityGenerated class >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TNamespaceEntity super: #FmxTraitEntity>
	<package: #'FmxNG-Generated'>
	^self
]

{ #category : #accessing }
FmxNGTNamespaceEntityGenerated >> parentNamespace [

	^ parentNamespace
]

{ #category : #accessing }
FmxNGTNamespaceEntityGenerated >> parentNamespace: anObject [

	parentNamespace := anObject

]
