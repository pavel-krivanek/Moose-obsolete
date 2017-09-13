accessing
nestedPackages: aPackage
	"References the packaged elements that are Packages."
	self nestedPackages
		removeAll;
		addAll: aPackage