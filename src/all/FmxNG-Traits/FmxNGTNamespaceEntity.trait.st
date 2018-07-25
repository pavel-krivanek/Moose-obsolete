Trait {
	#name : #FmxNGTNamespaceEntity,
	#instVars : [
		'#parentNamespace => FMOne type: #FmxNGTNamespace opposite: #namespaceEntities'
	],
	#category : #'FmxNG-Traits-Namespaces'
}

{ #category : #meta }
FmxNGTNamespaceEntity classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TNamespaceEntity super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTNamespaceEntity classSide >> generatedSlotNames [
	<generated>
	'FmxNGTNamespaceEntity class>>#generatedSlotNames'.
	^ #(parentNamespace)
]

{ #category : #generator }
FmxNGTNamespaceEntity classSide >> generatedTraitNames [
	<generated>
	^ #()
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
