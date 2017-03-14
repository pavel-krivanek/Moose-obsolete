tests
testWithIndexDo
	| enumerated |

	enumerated := OrderedCollection new.
	self listWithItems withIndexDo: [:each :i | enumerated addLast: each -> i].
	self assert:
		enumerated =
			(self listItems withIndexCollect: [:each : i | each -> i ]) asOrderedCollection.