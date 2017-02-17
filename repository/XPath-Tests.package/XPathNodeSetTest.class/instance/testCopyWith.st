tests
testCopyWith
	| list |

	super testCopyWith.

	list := self listWithSortOrder.
	self assertListHasUnknownSortOrder: (list copyWith: self newListItem).