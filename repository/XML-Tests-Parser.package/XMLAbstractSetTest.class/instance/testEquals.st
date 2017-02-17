tests
testEquals
	| set |

	set := self emptySet.
	self
		assertSet: set equals: self emptySet;
		denySet: set equals: self setWithElements;
		denySet: set equals: self setWithDisjointElements.

	set := self setWithElements.
	self
		assertSet: set equals: self setWithElements;
		denySet: set equals: self setWithDisjointElements.

	set := self setWithDisjointElements.
	self assertSet: set equals: self setWithDisjointElements.