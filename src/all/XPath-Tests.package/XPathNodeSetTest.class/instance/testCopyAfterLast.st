tests
testCopyAfterLast
	| list |

	super testCopyAfterLast.

	list := self listWithSortOrder.
	self
		assertList: (list copyAfterLast: list first)
		hasSameSortOrderAs: list.