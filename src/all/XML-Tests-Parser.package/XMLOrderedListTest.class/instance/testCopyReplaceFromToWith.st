tests
testCopyReplaceFromToWith
	| list emptyList |

	list := self listWithItems.
	emptyList := self emptyList.
	-1 to: list size + 1 do: [:start |
		start to: list size + 1 do: [:stop |
			self
				assertList: (list copyReplaceFrom: start to: stop with: self changedListItems)
				copiedFrom: list
				equals:
					(self listClass newFrom:
						(self listItemsFirst: start - 1),
						(self changedListItems),
						(self listItemsLast: list size - stop)).
			self
				assertList: (emptyList copyReplaceFrom: start to: stop with: self listItems)
				copiedFrom: emptyList
				equals: self listWithItems]].