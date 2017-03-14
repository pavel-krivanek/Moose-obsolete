tests
testDetect
	| list |

	list := self listWithItems.
	self listItems do: [:element |
		self assert: (list detect: [:each | each = element]) = element].
	self assert: (list detect: [:each | each = self absentListItem]) = self defaultValue.