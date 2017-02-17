tests
testCopyWithoutAll
	| list |

	super testCopyWithoutAll.

	list := self listWithSortOrder.
	self
		assertList: (list copyWithoutAll: (Array with: self singleListItem))
		hasSameSortOrderAs: list.