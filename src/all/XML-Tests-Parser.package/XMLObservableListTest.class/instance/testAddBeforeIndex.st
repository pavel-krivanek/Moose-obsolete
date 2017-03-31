tests
testAddBeforeIndex
	| list |

	super testAddBeforeIndex.

	(list := self emptyList) add: self listItems last.
	self listItems allButLast withIndexDo: [:each :i |
		self
			should: [list add: each beforeIndex: i]
			add: each
			toAndNotify: list].