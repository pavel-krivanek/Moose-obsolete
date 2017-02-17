tests
testAddBefore
	| list last |

	super testAddBefore.

	last := self listItems last.
	(list := self emptyList) add: last.
	"allButLastDo: is not portable"
	self listItems allButLast do: [:each |
		self
			should: [list add: each before: last]
			add: each
			toAndNotify: list].