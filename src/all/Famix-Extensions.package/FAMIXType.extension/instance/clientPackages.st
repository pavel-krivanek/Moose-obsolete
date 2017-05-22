*famix-extensions-nav All Dependencies
clientPackages
	"returns a set of all the packages that depend on (some classes of them inherit, staticly access, or use some methods of) the receiver"

	"Moose cook was: ^ self inheritedByPackages union: self invokingPackages"

	^ (self queryAllIncomingAssociations atScope: FAMIXPackage)
		withoutSelfLoops