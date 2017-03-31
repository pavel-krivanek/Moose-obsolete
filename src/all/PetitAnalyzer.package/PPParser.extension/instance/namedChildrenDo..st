*petitanalyzer-named
namedChildrenDo: aBlock
	"Iterate over the named children of the receiver."

	self namedChildrenDo: aBlock seen: IdentitySet new