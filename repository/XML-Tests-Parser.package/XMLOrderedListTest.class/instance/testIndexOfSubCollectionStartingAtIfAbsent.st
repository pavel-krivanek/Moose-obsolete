tests
testIndexOfSubCollectionStartingAtIfAbsent
	| list |

	list := self listWithItems.
	1 to: self listItems size do: [:i |
		i to: self listItems size do: [:j |
			self assert:
				(list
					indexOfSubCollection: (self listItems copyFrom: i to: j)
					startingAt: 1
					ifAbsent: [-1]) = i.
			self assert:
				(list
					indexOfSubCollection: (self listItems copyFrom: i to: j)
					startingAt: i
					ifAbsent: [-1]) = i.
			self assert:
				(list
					indexOfSubCollection: (self listItems copyFrom: i to: j)
					startingAt: i + 1
					ifAbsent: [-1]) = -1]].