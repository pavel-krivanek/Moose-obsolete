tests
testCopyAfter
	| list |

	super testCopyAfter.

	list := self listWithSortOrder.
	self
		assertList: (list copyAfter: list first)
		hasSameSortOrderAs: list.