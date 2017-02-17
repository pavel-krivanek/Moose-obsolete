tests
testAddAllFirst
	| list |

	super testAddAllFirst.

	list := self emptyList.
	self
		should: [list addAllFirst: self listItems]
		addAll: self listItems reversed
		toAndNotify: list.
	self
		should: [list addAllFirst: self changedListItems]
		addAll: self changedListItems reversed
		toAndNotify: list.