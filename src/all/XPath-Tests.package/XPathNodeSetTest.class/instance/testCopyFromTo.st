tests
testCopyFromTo
	| list |

	super testCopyFromTo.

	list := self listWithSortOrder.
	self
		assertList: (list copyFrom: 1 to: list size)
		hasSameSortOrderAs: list.