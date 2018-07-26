"
A TOODependencyQueries defines a vocabulary to compute dependencies of object-oriented entities.

For more informations: https://moosequery.ferlicot.fr/
"
Trait {
	#name : #TOODependencyQueries,
	#category : #'Moose-Query'
}

{ #category : #meta }
TOODependencyQueries classSide >> annotation [

	<MSEClass: #TOODependencyQueries super: #Trait>
	<generated>
	<package: #'Moose-Query'>
	^self
]

{ #category : #generator }
TOODependencyQueries classSide >> generatedSlotNames [
	<generated>
	'TOODependencyQueries class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
TOODependencyQueries classSide >> generatedTraitNames [
	<generated>
	^ #()
]
