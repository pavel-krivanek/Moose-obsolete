*famix-extensions-nav All Dependencies
providerPackages
	"returns a set of all the packages that the receiver depends on (they include some classes that the receiver inherites, staticly accesses, or uses some of their methods)"

	"Moose cook was: ^ self inheritedPackages union: self invokedPackages"

	^ (self queryAllOutgoingAssociations atScope: FAMIXPackage)
		withoutSelfLoops