tests
testConcatenation
	| firstSet secondSet |

	firstSet := self setWithElements.
	self assert: (firstSet, self setWithElements) = self setWithElements.

	secondSet := self setWithDisjointElements.	
	self
		assert: (firstSet, secondSet) = (secondSet, firstSet);
		deny: (firstSet, secondSet) = firstSet;
		deny: (firstSet, secondSet) = secondSet;
		assert:
			(firstSet, secondSet) =
				(self setClass newFrom: self setElements, self disjointSetElements).