*petitanalyzer-named
innerChildrenDo: aBlock
	"Iterate over the inner children of the receiver."

	self innerChildrenDo: aBlock seen: IdentitySet new