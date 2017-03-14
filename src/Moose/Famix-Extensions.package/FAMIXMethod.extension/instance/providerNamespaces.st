*famix-extensions-nav All Dependencies
providerNamespaces
	"returns a set of all the namespaces that the receiver depends on the receiver"
	^ self queryAllOutgoingAssociations atNamespaceScope withoutSelfLoops