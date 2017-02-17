tests
testAddBeforeIndex
	| list |

	(list := self emptyList) add: self listItems last.
	self listItems allButLast withIndexDo: [:each :i |
		self assert: (list add: each beforeIndex: i) = each].
	self
		assert: list = self listWithItems;
		should: [list add: self newListItem beforeIndex: self listItems size + 2] raise: Error;
		should: [list add: self newListItem beforeIndex: 0] raise: Error.