*famix-extensions-nav All Dependencies
clientPackages
	"^ self inheritedByPackages union: self invokingPackages"

	^ (self queryAllIncomingAssociations atScope: FAMIXPackage)
		withoutSelfLoops