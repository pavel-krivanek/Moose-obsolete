accessing
nestingPackage: aPackage
	"References the Package that owns this Package."
	nestingPackage := OPUMLToOneLink
		on: self identity
		update: #nestedPackages
		from: nestingPackage
		to: aPackage