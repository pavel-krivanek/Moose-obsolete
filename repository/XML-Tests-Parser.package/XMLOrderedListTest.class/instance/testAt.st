tests
testAt
	| list |

	list := self listWithItems.
	self
		assert: ((1 to: list size) allSatisfy: [:i | (list at: i) = (self listItems at: i)]);
		assert: (list at: 0) = self defaultValue;
		assert: (list at: list size + 1) = self defaultValue.