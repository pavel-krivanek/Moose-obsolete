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

	<ignoreInTraitUsers>
	<MSEClass: #TNamespaceEntity super: #FmxNGTNamespaceEntityGenerated>
	<package: #'FmxNG-Generated'>
	^self
]
