tests
testHashCustomCollection
	self assert:
		self emptyList hash = self customCollectionEmptyList hash.
	self assert:
		self listWithSingleItem hash =
			self customCollectionListWithSingleItem hash.
	self assert:
		self listWithItems hash =
			self customCollectionListWithItems hash.