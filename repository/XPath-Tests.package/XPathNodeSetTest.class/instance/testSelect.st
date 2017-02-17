tests
testSelect
	| list |

	super testSelect.

	list := self listWithSortOrder.
	self
		assertList: (list select: [:each | true])
		hasSameSortOrderAs: list.