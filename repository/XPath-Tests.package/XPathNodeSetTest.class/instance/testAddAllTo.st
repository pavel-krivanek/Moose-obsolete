tests
testAddAllTo
	| list listToAdd |

	list := OrderedCollection new.
	listToAdd := self emptyList.
	self
		assert: (listToAdd addAllTo: list) == listToAdd;
		assert: list isEmpty.

	listToAdd := self listWithItems.
	self
		assert: (listToAdd addAllTo: list) == listToAdd;
		assert: list = self listItems asOrderedCollection;
		assert: (listToAdd addAllTo: list) == listToAdd;
		assert: list = (self listItems, self listItems) asOrderedCollection.
