tests
testPlusSet
	| firstSet secondSet |

	firstSet := self setWithElements.
	secondSet := self emptySet.
	self
		should: [firstSet + secondSet]
		add: firstSet
		and: secondSet
		equaling: self setWithElements.
	self
		should: [firstSet + firstSet]
		add: firstSet
		and: firstSet
		equaling: self setWithElements.

	secondSet := self setWithDisjointElements.
	self
		should: [firstSet + secondSet]
		add: firstSet
		and: secondSet
		equaling:
			(self setClass newFrom:
				self setWithDisjointElements, self setWithElements).