tests
testCopyEmpty
	| list |

	super testCopyEmpty.

	list := self listWithSortOrder.
	self
		assertList: list copyEmpty
		hasSameSortOrderAs: self emptyList.