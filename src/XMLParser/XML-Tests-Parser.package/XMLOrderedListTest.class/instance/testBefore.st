tests
testBefore
	| list |

	list := self listWithItems.
	2 to: list size do: [:i |
		self assert: (list before: (self listItems at: i)) = (self listItems at: i - 1)].
	self
		assert: (list before: self listItems first) = self defaultValue;
		assert: (list before: self absentListItem) = self defaultValue.