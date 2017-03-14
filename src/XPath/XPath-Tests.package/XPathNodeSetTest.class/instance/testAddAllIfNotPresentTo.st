tests
testAddAllIfNotPresentTo
	| list listToAdd |

	list := OrderedCollection new.
	listToAdd := self emptyList.
	self
		assert: (listToAdd addAllIfNotPresentTo: list) == listToAdd;
		assert: list isEmpty.

	listToAdd := self listWithItems.
	self
		assert: (listToAdd addAllIfNotPresentTo: list) == listToAdd;
		assert: list = self listItems asOrderedCollection;
		assert: (listToAdd addAllIfNotPresentTo: list) == listToAdd;
		assert: list = self listItems asOrderedCollection.
