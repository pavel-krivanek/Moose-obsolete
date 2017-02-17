tests
testCopy
	| list |

	super testCopy.

	list := self listWithSortOrder.
	self assertList: list copy hasSameSortOrderAs: list.