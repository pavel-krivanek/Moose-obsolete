*famix-extensions-nav All Dependencies
clientPackages
	"^ self inheritedByPackages union: self invokingPackages"

	^ (self queryAllIncoming atScope: FAMIXPackage) withoutSelfLoops