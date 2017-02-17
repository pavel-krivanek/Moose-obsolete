tests
testUnion
	self assert:
		(self listWithItems | self listWithItems reversed) =
			self listWithItems.
	self assert:
		(self listWithItems | self emptyList) =
			self listWithItems.
	self assert:
		(self listWithSingleItem | self listWithItems reversed) =
			self listWithItems.
	self assert:
		((self listWithItems select: [:each | each isElement]) reversed |
			(self listWithItems reject: [:each | each isElement])) =
				self listWithItems.