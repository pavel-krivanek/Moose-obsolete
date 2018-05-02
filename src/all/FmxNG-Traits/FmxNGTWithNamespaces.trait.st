Trait {
	#name : #FmxNGTWithNamespaces,
	#instVars : [
		'#namespaces => FMMany type: #FmxNGTNamespace opposite: #namespaceOwner'
	],
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTWithNamespaces classSide >> annotation [

	<generated>
	<ignoreInTraitUsers>
	<MSEClass: #TWithNamespaces super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTWithNamespaces classSide >> generatedSlotNames [
	<generated>
	^ #(namespaces)
]

{ #category : #generator }
FmxNGTWithNamespaces classSide >> generatedTraitNames [
	<generated>
	^ #()
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
