tests
testCopyReplaceAllWith
	| list |

	super testCopyReplaceAllWith.

	list := self listWithSortOrder.
	self assertListHasUnknownSortOrder:
		(list
			copyReplaceAll: self listItems
			with: self listItems).