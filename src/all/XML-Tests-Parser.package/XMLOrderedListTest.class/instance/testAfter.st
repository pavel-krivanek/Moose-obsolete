tests
testAfter
	| list |

	list := self listWithItems.
	1 to: list size - 1 do: [:i |
		self assert:
			(list after: (self listItems at: i)) =
				(self listItems at: i + 1)].
	self
		assert: (list after: self listItems last) = self defaultValue;
		assert: (list after: self absentListItem) = self defaultValue.