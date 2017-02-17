tests
testAddAfter
	| list |

	list := self listWithSingleItem.
	self
		assert:
			(self listItems allButFirst reversed
				allSatisfy: [:each | (list add: each after: self singleListItem) = each]);
		assert: list = self listWithItems;
		should: [list add: self newListItem after: self absentListItem] raise: Error.