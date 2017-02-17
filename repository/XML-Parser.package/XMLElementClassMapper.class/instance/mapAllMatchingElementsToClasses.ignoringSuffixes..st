mapping
mapAllMatchingElementsToClasses: aClassCollection ignoringSuffixes: aSuffixCollection
	aClassCollection do: [:each |
		self
			mapAllMatchingElementsToClass: each
			ignoringSuffixes: aSuffixCollection]