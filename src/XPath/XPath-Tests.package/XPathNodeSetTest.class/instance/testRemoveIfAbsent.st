tests
testRemoveIfAbsent
	| list |

	super testRemoveIfAbsent.

	(list := self listWithSortOrder)
		remove: self absentListItem ifAbsent: [nil];
		remove: self singleListItem ifAbsent: [nil].
	self
		assertList: list
		hasSameSortOrderAs: self listWithSortOrder.