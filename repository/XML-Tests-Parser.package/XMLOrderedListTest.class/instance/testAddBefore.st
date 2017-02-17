tests
testAddBefore
	| list last |

	last := self listItems last.
	(list := self emptyList) add: last.
	self
		assert:
			(self listItems allButLast
				allSatisfy: [:each | (list add: each before: last) = each]);
		assert: list = self listWithItems;
		should: [list add: self newListItem before: self absentListItem] raise: Error.