accessing
rejectedPackageNames: aCollection
	"Define the Fame package that should not be imported.
	When a package is marked to be rejected, the classes and extension properties
	that are packaged in it will not be considered by the pragma processor
	and those definitions will not appear in the resulting meta repository."
	rejectedPackages := aCollection