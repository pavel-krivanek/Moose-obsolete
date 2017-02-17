tests
testDifference
	self assert:
		(self listWithItems \ self listWithItems) =
			self emptyList.
	self assert:
		(self listWithItems reversed \ self emptyList) =
			self listWithItems.
	self assert:
		(self listWithItems \ self listWithSingleItem) =
			self listWithItems allButFirst.
	self assert:
		(self listWithItems reversed \
			(self listItems select: [:each | each isElement])) =
				(self listWithItems reject: [:each | each isElement]).