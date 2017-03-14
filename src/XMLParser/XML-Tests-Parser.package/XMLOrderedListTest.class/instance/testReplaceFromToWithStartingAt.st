tests
testReplaceFromToWithStartingAt
	1 to: self listItems size do: [:start |
		start to: self listItems size do: [:stop | | list |
			list := self listWithItems.
			self assert:
				(list
					replaceFrom: start
					to: stop
					with: self changedListItems
					startingAt: start) == list.

			self
				assertList: list
				replacedItems: self listItems
				withItems: self changedListItems
				from: start
				to: stop.

			start > 1
				ifTrue: [
					self
						should: [
							self emptyList
								replaceFrom: start
								to: stop
								with: self listItems
								startingAt: start]
						raise: Error]
				ifFalse: [
					self assert:
						(self emptyList
							replaceFrom: start
							to: stop
							with: self listItems
							startingAt: start) =
								(self listClass newFrom: (self listItemsFirst: stop))]]]