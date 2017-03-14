tests
testAddAll
	| list |

	super testAddAll.

	list := self emptyList.
	self
		should: [list addAll: self listItems]
		addAll: self listItems
		toAndNotify: list.
	self
		should: [list addAll: self changedListItems]
		addAll: self changedListItems
		toAndNotify: list.