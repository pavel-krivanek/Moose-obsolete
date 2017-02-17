tests
testRemoveAll
	| list |

	super testRemoveAll.

	list := self listWithItems.
	self
		should: [list removeAll]
		removeAll: self listItems reversed
		fromAndNotify: list.