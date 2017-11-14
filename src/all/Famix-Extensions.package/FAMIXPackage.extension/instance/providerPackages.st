*famix-extensions-nav All Dependencies
providerPackages
	"^ self inheritedPackages union: self invokedPackages"

	^ (self queryAllOutgoing atScope: FAMIXPackage) withoutSelfLoops