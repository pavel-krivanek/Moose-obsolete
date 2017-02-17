adding
addFromPackagesMatching: aBlock

	RPackage organizer packages do: [:each |
		 (aBlock value: each) ifTrue: [self addFromPackage: each]]