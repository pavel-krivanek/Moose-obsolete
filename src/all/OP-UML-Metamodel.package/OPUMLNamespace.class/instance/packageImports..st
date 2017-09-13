accessing
packageImports: aPackageImport
	"References the PackageImports owned by the Namespace."
	self packageImports
		removeAll;
		addAll: aPackageImport