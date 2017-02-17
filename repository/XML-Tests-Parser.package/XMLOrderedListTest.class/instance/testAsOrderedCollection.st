tests
testAsOrderedCollection
	| list |

	list := self listWithItems.
	self
		assert: self emptyList asOrderedCollection = OrderedCollection new;
		assert: list asOrderedCollection = self listItems asOrderedCollection;
		deny: list asOrderedCollection == list collection.