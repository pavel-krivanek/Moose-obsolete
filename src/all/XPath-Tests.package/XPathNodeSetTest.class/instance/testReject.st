tests
testReject
	| list |

	super testReject.

	list := self listWithSortOrder.
	self
		assertList: (list reject: [:each | false])
		hasSameSortOrderAs: list.