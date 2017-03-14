tests
testWithCollect
	| list |

	list := self listWithItems.
	self
		assertList: (list with: (1 to: list size + 1) collect: [:each :i | each -> i])
		collectedFrom: list
		equals:
			(self listSpecies newFrom:
				(self listItems withIndexCollect: [:each :i | each -> i])).
	self
		assertList: (list with: (1 to: list size - 1) collect: [:each :i | each -> i])
		collectedFrom: list
		equals:
			(self listSpecies newFrom:
				(self listItems allButLast
					withIndexCollect: [:each :i | each -> i])).