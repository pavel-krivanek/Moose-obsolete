tests
testLastIndexOfIfAbsent
	| list |

	list := self listClass newFrom: self listItems, self listItems.
	list do: [:each |
		self assert:
			(list lastIndexOf: each ifAbsent: [-1]) =
				(self allowsDuplicates
					ifTrue: [self listItems, self listItems lastIndexOf: each]
					ifFalse: [self listItems lastIndexOf: each])].
	self assert: (list lastIndexOf: self newListItem ifAbsent: [-1])  = -1.