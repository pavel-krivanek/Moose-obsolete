tests
testDetectIfNone
	| list |

	list := self listWithItems.
	self listItems do: [:element |
		self assert:
			(list
				detect: [:each | each = element]
				ifNone: [self newListItem]) = element].
	self assert:
		(list
			detect: [:each | each = self absentListItem]
			ifNone: [self newListItem]) = self newListItem.