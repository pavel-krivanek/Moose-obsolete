tests
testCopyUpToLast
	| list |

	super testCopyUpToLast.

	list := self listWithSortOrder.
	self
		assertList: (list copyUpToLast: list last)
		hasSameSortOrderAs: list.