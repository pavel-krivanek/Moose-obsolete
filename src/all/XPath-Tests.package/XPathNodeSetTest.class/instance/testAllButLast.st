tests
testAllButLast
	| list |

	super testAllButLast.

	list := self listWithSortOrder.
	self
		assertList: list allButLast
		hasSameSortOrderAs: list.