tests
testRemoveLastFew
	| list removedElements |

	1 to: self listItems size do: [:i |
		list := self listWithItems.
		removedElements := list removeLast: i.
		self
			assert: removedElements asArray = (self listItemsLast: i) asArray;
			assert: list = (self listClass newFrom: (self listItems allButLast: i));
			assert: (list removeLast: 0) isEmpty;
			should: [self emptyList removeLast: i] raise: Error].