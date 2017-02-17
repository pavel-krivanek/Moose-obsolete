tests
testCopyReplaceFromToWith
	| list |

	super testCopyReplaceFromToWith.

	list := self listWithSortOrder.
	self assertListHasUnknownSortOrder:
		(list
			copyReplaceFrom: 1
			to: list size
			with: self listItems).