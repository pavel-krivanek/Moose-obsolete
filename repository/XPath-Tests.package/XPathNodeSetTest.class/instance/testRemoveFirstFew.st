tests
testRemoveFirstFew
	| list |

	super testRemoveFirstFew.

	(list := self listWithSortOrder) removeFirst: 1.
	self
		assertList: list
		hasSameSortOrderAs: self listWithSortOrder.