Trait {
	#name : #FmxNGTNamespaceEntity,
	#instVars : [
		'#parentNamespace => FMOne type: #FmxNGTNamespace opposite: #namespaceEntities'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTNamespaceEntity classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TNamespaceEntity super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTNamespaceEntity classSide >> generatedSlotNames [
	<generated>
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
