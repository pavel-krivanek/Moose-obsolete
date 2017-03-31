tests
testSwapWith
	| list |

	super testSwapWith.

	(list := self listWithSortOrder)
		swap: 1
		with: list size.
	self assertListHasUnknownSortOrder: list.