*famix-extensions
children

	^ self childNamedEntities select: [:child | child isKindOf: FAMIXPackage]