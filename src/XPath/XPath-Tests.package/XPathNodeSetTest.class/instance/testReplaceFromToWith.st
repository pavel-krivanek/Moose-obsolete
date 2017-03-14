tests
testReplaceFromToWith
	| list |

	super testReplaceFromToWith.

	(list := self listWithSortOrder)
		replaceFrom: 1
		to: list size
		with: self listItems.
	self assertListHasUnknownSortOrder: list.