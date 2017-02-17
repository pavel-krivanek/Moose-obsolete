tests
testLastIndexOf
	| list |

	list := self listClass newFrom: self listItems, self listItems.
	list do: [:each |
		self assert:
			(list lastIndexOf: each) =
				(self allowsDuplicates
					ifTrue: [self listItems, self listItems lastIndexOf: each]
					ifFalse: [self listItems lastIndexOf: each])].
	self assert: (list lastIndexOf: self newListItem) isZero.