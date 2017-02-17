tests
testFirstFew
	| list |

	super testFirstFew.

	list := self listWithSortOrder.
	self
		assertList: (list first: list size)
		hasSameSortOrderAs: list.