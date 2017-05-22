*famix-extensions-nav All Dependencies
providerNamespaces
	"returns a set of all the namespaces that the receiver depends on (they include some classes that the receiver inherites, staticly accesses, or uses some of their methods)"

	"Moose cook was: ^ self inheritedNamespaces union: self invokedNamespaces"

	^ (self queryAllOutgoingAssociations atScope: FAMIXNamespace)
		withoutSelfLoops