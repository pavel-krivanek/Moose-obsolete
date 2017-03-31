accessing
revertDependenciesFor: aCollectionOfContexts
	"return all the contexts from wich aCollectionOfContexts depends"
	| revertDependenciesForContext |

	revertDependenciesForContext := Set new.
	 entityDependencies.
	aCollectionOfContexts do: [:each | 
		entityDependencies associationsDo: [:assoc | 
		(assoc value includes: each ) ifTrue: [revertDependenciesForContext add: assoc key] ] ].
	
	revertDependenciesForContext size == aCollectionOfContexts size
	ifTrue: [ ^ revertDependenciesForContext ]
	ifFalse: [^ self revertDependenciesFor: revertDependenciesForContext ].