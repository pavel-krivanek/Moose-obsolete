tests
testIndexOf
	| list |

	list := self listWithItems.
	1 to: list size do: [:i |
		self
			assert: (list indexOf: (list at: i)) = i;
			assert: (list indexOf: (self listItems at: i)) = i].
	self assert: (list indexOf: self absentListItem) isZero.