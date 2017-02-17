tests
testIndexOfStartingAt
	| list |

	list := self listWithItems.
	1 to: list size do: [:i |
		self
			assert: (list indexOf: (list at: i) startingAt: i) = i;
			assert: (list indexOf: (list at: i) startingAt: i + 1) isZero].