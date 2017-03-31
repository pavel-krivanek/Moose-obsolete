tests
testRemoveAll
	| list |

	super testRemoveAll.

	(list := self listWithSortOrder) removeAll.
	self
		assertList: list
		hasSameSortOrderAs: self listWithSortOrder.