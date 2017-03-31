tests
testLastFew
	| list |

	super testLastFew.

	list := self listWithSortOrder.
	self
		assertList: (list last: list size)
		hasSameSortOrderAs: list.