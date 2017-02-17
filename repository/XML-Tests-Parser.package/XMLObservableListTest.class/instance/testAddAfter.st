tests
testAddAfter
	| list |

	super testAddAfter.

	list := self listWithSingleItem.
	self listItems allButFirst reverseDo: [:each |
		self
			should: [list add: each after: self singleListItem]
			add: each
			toAndNotify: list].