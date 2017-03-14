tests
testCopyUpTo
	| list |

	super testCopyUpTo.

	list := self listWithSortOrder.
	self
		assertList: (list copyUpTo: list last)
		hasSameSortOrderAs: list.