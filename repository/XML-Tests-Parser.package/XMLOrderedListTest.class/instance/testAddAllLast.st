tests
testAddAllLast
	| list |

	list := self emptyList.
	self
		assert: (list addAllLast: self listItems) = self listItems;
		assert: list = self listWithItems;
		assert: (list addAllLast: self changedListItems) = self changedListItems;
		assert: list = (self listClass newFrom: self listItems, self changedListItems).