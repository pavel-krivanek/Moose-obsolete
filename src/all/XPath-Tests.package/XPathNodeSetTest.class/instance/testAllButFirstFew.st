tests
testAllButFirstFew
	| list |

	super testAllButFirstFew.

	list := self listWithSortOrder.
	self
		assertList: (list allButFirst: 1)
		hasSameSortOrderAs: list.