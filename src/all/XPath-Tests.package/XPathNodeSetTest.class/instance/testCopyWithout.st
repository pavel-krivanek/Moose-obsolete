tests
testCopyWithout
	| list |

	super testCopyWithout.

	list := self listWithSortOrder.
	self
		assertList: (list copyWithout: self singleListItem)
		hasSameSortOrderAs: list.