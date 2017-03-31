tests
testAllButFirst
	| list |

	super testAllButFirst.

	list := self listWithSortOrder.
	self
		assertList: list allButFirst
		hasSameSortOrderAs: list.