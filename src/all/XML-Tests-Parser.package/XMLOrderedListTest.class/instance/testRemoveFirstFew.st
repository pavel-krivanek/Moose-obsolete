tests
testRemoveFirstFew
	1 to: self listItems size do: [:i | | list removedElements |
		list := self listWithItems.
		removedElements := list removeFirst: i.
		self
			assert: removedElements asArray = (self listItemsFirst: i);
			assert: list = (self listClass newFrom: (self listItems allButFirst: i));
			assert: (list removeFirst: 0) isEmpty;
			should: [self emptyList removeFirst: i] raise: Error].