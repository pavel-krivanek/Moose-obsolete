*famix-extensions-nav All Dependencies
clientPackages
	"returns a set of all the packages that depend on the receiver"
	^ self queryAllIncomingAssociations atPackageScope withoutSelfLoops