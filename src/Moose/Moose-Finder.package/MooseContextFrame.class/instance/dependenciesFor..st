context informations
dependenciesFor: aCollectionOfContexts
	"return all the contexts depending of contexts in aCollectionOfContexts"
	| dependenciesForContext |

	dependenciesForContext := Set new.
	aCollectionOfContexts do: [:each | dependenciesForContext addAll: (MooseImportingContext entityDependencies at: each)].

	dependenciesForContext size == aCollectionOfContexts size
		ifTrue: [^ dependenciesForContext ]
		ifFalse: [^ self dependenciesFor: dependenciesForContext ].