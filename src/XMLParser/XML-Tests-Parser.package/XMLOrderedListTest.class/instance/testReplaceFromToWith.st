tests
testReplaceFromToWith
	| list |

	1 to: self listItems size do: [:start |
		start to: self listItems size do: [:stop |
			list := self listWithItems.
			self assert:
				(list
					replaceFrom: start
					to: stop
					with: (self changedListItems allButFirst: start - 1)) == list.

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
								with: self listItems]
						raise: Error]
				ifFalse: [
					self assert:
						(self emptyList
							replaceFrom: start
							to: stop
							with: self listItems) =
								(self listClass newFrom: (self listItemsFirst: stop))]]]