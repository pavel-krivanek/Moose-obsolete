tests
testMinusSet
	| firstSet secondSet |

	firstSet := self setWithElements.
	secondSet := self emptySet.
	self
		should: [firstSet - secondSet]
		subtract: secondSet
		from: firstSet
		equaling: self setWithElements.

	secondSet := self setWithDisjointElements.
	self
		should: [firstSet - secondSet]
		subtract: secondSet
		from: firstSet
		equaling: self setWithElements.
	self
		should: [firstSet - firstSet]
		subtract: firstSet
		from: firstSet
		equaling: self emptySet.