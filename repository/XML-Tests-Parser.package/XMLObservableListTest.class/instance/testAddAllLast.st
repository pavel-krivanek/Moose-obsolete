tests
testAddAllLast
	| list |

	super testAddAllLast.

	list := self emptyList.
	self
		should: [list addAllLast: self listItems]
		addAll: self listItems
		toAndNotify: list.
	self
		should: [list addAllLast: self changedListItems]
		addAll: self changedListItems
		toAndNotify: list.