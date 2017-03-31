tests
testAddAllFirst
	| list |

	list := self emptyList.
	self
		assert: (list addAllFirst: self listItems) = self listItems;
		assert: list = self listWithItems;
		assert: (list addAllFirst: self changedListItems) = self changedListItems;
		assert: list = (self listClass newFrom: self changedListItems, self listItems).