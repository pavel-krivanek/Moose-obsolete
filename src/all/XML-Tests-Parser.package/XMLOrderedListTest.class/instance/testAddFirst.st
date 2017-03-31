tests
testAddFirst
	| list |

	list := self emptyList.
	self
		assert: (self listItems reversed allSatisfy: [:each | (list addFirst: each) = each]);
		assert: list = self listWithItems.

	self assert: (self listItems allSatisfy: [:each | (list addFirst: each) = each]).
	self assert:
		list =
			(self listClass newFrom: 
				(self allowsDuplicates
					ifTrue: [self listItems reversed, self listItems]
					ifFalse: [self listItems reversed])).