tests
testRemoveLastFew
	| list |

	super testRemoveLastFew.

	(list := self listWithSortOrder) removeLast: 1.
	self
		assertList: list
		hasSameSortOrderAs: self listWithSortOrder.