tests
testDoWithIndex
	| list enumerated |

	list := self listWithItems.
	enumerated := OrderedCollection new.
	list withIndexDo: [:each :i | enumerated addLast: each -> i].
	self assert:
		enumerated =
			(self listItems withIndexCollect: [:each : i | each -> i ])
				asOrderedCollection.