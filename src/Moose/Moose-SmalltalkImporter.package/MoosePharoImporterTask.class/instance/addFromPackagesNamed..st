adding
addFromPackagesNamed: aCollection

	aCollection do: [:each| self addFromPackageNamed: each]