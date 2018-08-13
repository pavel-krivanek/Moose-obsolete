accessing
extendedTraits
	
	^ (self extensionMethods collect: #parent) select: #isTrait