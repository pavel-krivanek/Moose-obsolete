tests
testAddLast
	| list |

	list := self emptyList.
	self
		assert: (self listItems allSatisfy: [:each | (list addLast: each) = each]);
		assert: list = self listWithItems.

	self assert: (self listItems allSatisfy: [:each | (list addLast: each) = each]).
	self assert:
		list =
			(self listClass newFrom: 
				(self allowsDuplicates
					ifTrue: [self listItems, self listItems]
					ifFalse: [self listItems])).