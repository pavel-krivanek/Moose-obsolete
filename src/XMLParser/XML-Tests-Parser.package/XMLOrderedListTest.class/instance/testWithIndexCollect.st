tests
testWithIndexCollect
	| list |

	list := self listWithItems.
	self
		assertList: (list withIndexCollect: [:each :i | each -> i])
		collectedFrom: list
		equals:
			(self listSpecies newFrom:
				(self listItems withIndexCollect: [:each :i | each -> i])).