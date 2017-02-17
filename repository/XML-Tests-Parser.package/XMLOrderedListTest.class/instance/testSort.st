tests
testSort
	| list |

	list := self listWithItems.
	self
		assert: list sort == list;
		assert: list = (self listClass newFrom: (self listItems copy sort: self sortBlock));
		assert: (list sort: self reverseSortBlock) == list;
		assert: list = (self listClass newFrom: (self listItems copy sort: self reverseSortBlock)).