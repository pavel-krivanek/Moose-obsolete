tests - position
testBottomosition03
	box bottomPosition: -10 @ -10.
	self assert: box bottomPosition equals: -10 @ -10.
	self assert: box position equals: -10 @ -25.