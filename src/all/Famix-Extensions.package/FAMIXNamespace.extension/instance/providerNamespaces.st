*famix-extensions-nav All Dependencies
providerNamespaces
	"MooseCook was: ^ self inheritedNamespaces union: self invokedNamespaces"

	^ (self queryAllOutgoing atScope: FAMIXNamespace) withoutSelfLoops