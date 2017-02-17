tests
testRemoveAt
	self listItems withIndexDo: [:each :i | | list |
		list := self listWithItems.
		self
			assert: (list removeAt: i) = each;
			assert: (list = (self listClass newFrom: (self listItems copyWithout: each)))].
	self
		should: [self listWithItems removeAt: 0] raise: Error;
		should: [self listWithItems removeAt: self listItems size + 1] raise: Error.