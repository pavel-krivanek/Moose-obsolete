tests
testCopyFromTo
	| list emptyList |

	list := self listWithItems.
	emptyList  := self emptyList.
	-1 to: list size + 1 do: [:start |
		start to: list size + 1 do: [:stop |
			self
				assertList: (list copyFrom: start to: stop)
				copiedFrom: list
				equals: (self listWithItems copyFrom: (start max: 1) to: (stop min: list size)).
			self
				assertList: (list copyFrom: start to: start - 1)
				copiedFrom: list
				equals: self emptyList.
			self
				assertList: (list copyFrom: start to: start - 2)
				copiedFrom: list
				equals: self emptyList.
			self
				assertList: (emptyList copyFrom: start to: stop)
				copiedFrom: list
				equals: self emptyList]].