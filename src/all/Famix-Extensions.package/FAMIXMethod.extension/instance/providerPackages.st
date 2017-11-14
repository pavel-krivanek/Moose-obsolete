*famix-extensions-nav All Dependencies
providerPackages
	"returns a set of all the packages that the receiver depends on the receiver"

	^ (self queryAllOutgoing atScope: FAMIXPackage) withoutSelfLoops