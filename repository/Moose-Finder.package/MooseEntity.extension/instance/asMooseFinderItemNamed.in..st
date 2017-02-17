*Moose-Finder
asMooseFinderItemNamed: aString in: aMooseEntity
	| itemName |
	itemName := aString capitalized, ': ', self mooseName.
	^ MooseGroup with: self withDescription: itemName