tests
testAddAfterIndex
	| list |

	list := self listWithSingleItem.
	self
		assert:
			(self listItems allButFirst reversed
				allSatisfy: [:each | (list add: each afterIndex: 1) = each]);
		assert: list = self listWithItems;
		should: [list add: self newListItem afterIndex: self listItems size + 1] raise: Error;
		should: [list add: self newListItem afterIndex: -1] raise: Error.