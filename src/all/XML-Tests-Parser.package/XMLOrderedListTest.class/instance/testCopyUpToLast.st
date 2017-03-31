tests
testCopyUpToLast
	| list |

	list := self listClass newFrom: self listItems, self listItems.
	list do: [:each |
		self
			assertList: (list copyUpToLast: each)
			copiedFrom: list
			equals:
				(self listClass newFrom:
					(self allowsDuplicates
						ifTrue: [self listItems, self listItems copyUpToLast: each]
						ifFalse: [self listItems copyUpToLast: each]))].
	self
		assertList: (list copyUpToLast: self absentListItem)
		copiedFrom: list
		equals:
			(self listClass newFrom:
				(self allowsDuplicates
					ifTrue: [self listItems, self listItems]
					ifFalse: [self listItems])).