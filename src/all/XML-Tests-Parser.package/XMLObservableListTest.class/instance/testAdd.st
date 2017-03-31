tests
testAdd
	| list |

	super testAdd.

	list := self emptyList.
	self listItems do: [:each |
		self
			should: [list add: each]
			add: each
			toAndNotify: list].