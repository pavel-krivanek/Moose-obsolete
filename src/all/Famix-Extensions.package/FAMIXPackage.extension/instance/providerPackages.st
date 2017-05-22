*famix-extensions-nav All Dependencies
providerPackages
	"^ self inheritedPackages union: self invokedPackages"

	^ (self queryAllOutgoingAssociations atScope: FAMIXPackage)
		withoutSelfLoops