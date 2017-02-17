tests
testCopyWithFirst
	| list |

	super testCopyWithFirst.

	list := self listWithSortOrder.
	self assertListHasUnknownSortOrder: (list copyWithFirst: self newListItem).