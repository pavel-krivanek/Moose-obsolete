tests
testAtPut
	| list |

	list := self listWithItems.
	1 to: list size do: [:i | | replacement |
		replacement := list at: i.
		self
			assert: (list at: i put: replacement) == replacement;
			assert: (list at: i) == replacement].
	self assert: list = self listWithItems.

	self assert: (list at: list size + 1 put: self newListItem) = self newListItem.
	self assert:
		list =
			(self listClass newFrom: (self listItems copyWith: self newListItem)).

	list := self listWithItems.
	1 to: list size do: [:i | | replacement |
		replacement := self changedListItems at: i.
		self
			assert: (list at: i put: replacement) == replacement;
			assert: (list at: i) == replacement].
	self assert: list = (self listClass newFrom: self changedListItems).

	list := self listWithItems.
	self listItems do: [:each |
		self assert: (list at: list size + 1 put: each) == each].
	self assert:
		list =
			(self allowsDuplicates
				ifTrue: [self listClass newFrom: self listItems, self listItems]
				ifFalse: [self listWithItems]).
	self
		should: [list at: 0 put: self newListItem]
		raise: Error.
	self
		should: [list at: list size + 2 put: self newListItem]
		raise: Error.