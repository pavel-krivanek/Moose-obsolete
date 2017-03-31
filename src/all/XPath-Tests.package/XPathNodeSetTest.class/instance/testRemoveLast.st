tests
testRemoveLast
	| list |

	super testRemoveLast.

	(list := self listWithSortOrder) removeLast.
	self
		assertList: list
		hasSameSortOrderAs: self listWithSortOrder.