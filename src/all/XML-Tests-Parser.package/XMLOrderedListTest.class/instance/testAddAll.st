tests
testAddAll
	| list |

	list := self emptyList.
	self
		deny: list = self listWithItems;
		assert: (list addAll: self listItems) = self listItems;
		assert: list = self listWithItems;
		assert: (list addAll: self changedListItems) = self changedListItems;
		assert: list = (self listClass newFrom: (self listItems, self changedListItems)).