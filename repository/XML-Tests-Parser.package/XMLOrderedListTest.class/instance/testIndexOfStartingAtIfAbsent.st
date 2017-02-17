tests
testIndexOfStartingAtIfAbsent
	| list |

	list := self listWithItems.
	1 to: list size do: [:i |
		self
			assert: (list indexOf: (list at: i) startingAt: i ifAbsent: [-1]) = i;
			assert: (list indexOf: (list at: i) startingAt: i + 1 ifAbsent: [-1]) = -1].