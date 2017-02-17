tests
testIndexOfIfAbsent
	| list |

	list := self listWithItems.
	1 to: list size do: [:i |
		self
			assert: (list indexOf: (list at: i) ifAbsent: [-1]) = i;
			assert: (list indexOf: (self listItems at: i) ifAbsent: [-1]) = i].
	self assert: (list indexOf: self absentListItem ifAbsent: [-1]) = -1.