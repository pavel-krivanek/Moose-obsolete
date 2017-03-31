tests
testAllButLastFew
	| list |

	super testAllButLastFew.

	list := self listWithSortOrder.
	self
		assertList: (list allButLast: 1)
		hasSameSortOrderAs: list.