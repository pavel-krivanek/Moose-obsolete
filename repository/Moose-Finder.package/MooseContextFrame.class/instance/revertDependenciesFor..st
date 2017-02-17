context informations
revertDependenciesFor: aCollectionOfContexts
	"return all the contexts from wich aCollectionOfContexts depends"
	| revertDependenciesForContext entityDependencies |

	revertDependenciesForContext := Set new.
	entityDependencies := MooseImportingContext entityDependencies.
	aCollectionOfContexts do: [:each | 
		entityDependencies associationsDo: [:assoc | 
		(assoc value includes: each ) ifTrue: [revertDependenciesForContext add: assoc key] ] ].
	
	revertDependenciesForContext size == aCollectionOfContexts size
	ifTrue: [ ^ revertDependenciesForContext ]
	ifFalse: [^ self revertDependenciesFor: revertDependenciesForContext ].
	
