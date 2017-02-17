accessing
dependenciesFor: aCollectionOfContexts
	"return all contexts depending of contexts in aCollectionOfContexts"
	| dependenciesForContext |

	dependenciesForContext := Set new.
	aCollectionOfContexts do: [:each | dependenciesForContext addAll: ( entityDependencies at: each)].

	dependenciesForContext size == aCollectionOfContexts size
		ifTrue: [^ dependenciesForContext ]
		ifFalse: [^ self dependenciesFor: dependenciesForContext ].