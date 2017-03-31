tests
testReplaceFromToWithStartingAt
	| list |

	super testReplaceFromToWithStartingAt.

	(list := self listWithSortOrder)
		replaceFrom: 1
		to: list size
		with: self listItems
		startingAt: 1.
	self assertListHasUnknownSortOrder: list.