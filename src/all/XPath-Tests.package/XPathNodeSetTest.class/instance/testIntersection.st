tests
testIntersection
	self assert:
		(self listWithItems reversed & self listWithItems) =
			self listWithItems.
	self assert:
		(self listWithItems & self emptyList) =
			self emptyList.
	self assert:
		(self listWithSingleItem & self listWithItems reversed) =
			self listWithSingleItem.
	self assert:
		(self listWithItems &
			(self listWithItems select: [:each | each isElement])) =
				(self listWithItems select: [:each | each isElement])