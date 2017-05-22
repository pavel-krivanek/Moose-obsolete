*famix-extensions-nav All Dependencies
clientNamespaces
	"MooseCook was: ^ self inheritedByNamespaces union: self invokingNamespaces"

	^ (self queryAllIncomingAssociations atScope: FAMIXNamespace)
		withoutSelfLoops