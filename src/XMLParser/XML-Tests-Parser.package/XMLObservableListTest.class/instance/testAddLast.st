tests
testAddLast
	| list |

	super testAddLast.

	list := self emptyList.
	self listItems do: [:each |
		self
			should: [list addLast: each]
			add: each
			toAndNotify: list].