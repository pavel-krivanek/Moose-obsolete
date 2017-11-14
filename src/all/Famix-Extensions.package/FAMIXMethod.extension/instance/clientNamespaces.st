*famix-extensions-nav All Dependencies
clientNamespaces
	"returns a set of all the namespaces that depend on the receiver"

	^ (self queryAllIncoming atScope: FAMIXNamespace) withoutSelfLoops