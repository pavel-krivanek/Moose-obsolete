tests
testAdd
	| list |

	list := self emptyList.
	self
		deny: list = self listWithItems;
		assert: (self listItems allSatisfy: [:each | (list add: each) == each]);
		assert: (list = self listWithItems).