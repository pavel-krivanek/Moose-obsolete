tests
testRemoveFirst
	| list |

	super testRemoveFirst.

	(list := self listWithSortOrder) removeFirst.
	self
		assertList: list
		hasSameSortOrderAs: self listWithSortOrder.